/*
 *  ******************************************************************************************************************************
 *  Functions which are used to setup and init the robot
 *  *****************************************************************************************************************************/

#include <Arduino.h>

#include "SpotMicro.h"
#include "config.h"

#include <ESP8266WiFi.h>
#include <EEPROM.h>

int configEEPROMStart = 0;

/* ******************************************************************************************************************************
   LOAD factory defaults. These settings are used at initial boot and can be overwritten by EEPROM data
 * ******************************************************************************************************************************/
configData_t loadFactorySettings()
{
    configData_t conf;

    conf.EEPROM = false; // leave this always to false as it is used to determine if EEPROM read was successful

    // communication settings
    conf.useWifi = false;
    strlcpy(conf.SSID, "YOUR SSID", 31);
    //conf.SSID = "YOUR SSID";
    strlcpy(conf.PSK, "YOUR PSK", 31);

    // ROS related settings
    strlcpy(conf.ROS_MASTER, "127.0.0.1", 31);

    /*------------------ SERVO SETTINGS -----------*/
    // front left
    conf.SERVO0_MIN = 10; // shoulder
    conf.SERVO0_MAX = 118;
    conf.SERVO0_OFFSET = 0;
    conf.SERVO0_INVERT = false;

    conf.SERVO1_MIN = 0; // hind limb
    conf.SERVO1_MAX = 180;
    conf.SERVO1_OFFSET = 0;
    conf.SERVO1_INVERT = false;

    conf.SERVO2_MIN = 0; // ellbow
    conf.SERVO2_MAX = 180;
    conf.SERVO2_OFFSET = 0;
    conf.SERVO2_INVERT = false;

    // front right
    conf.SERVO3_MIN = 10; // shoulder
    conf.SERVO3_MAX = 118;
    conf.SERVO3_OFFSET = 0;
    conf.SERVO3_INVERT = true;

    conf.SERVO4_MIN = 0; // hind limb
    conf.SERVO4_MAX = 180;
    conf.SERVO4_OFFSET = 0;
    conf.SERVO4_INVERT = false;

    conf.SERVO5_MIN = 0; // ellbow
    conf.SERVO5_MAX = 180;
    conf.SERVO5_OFFSET = 0;
    conf.SERVO5_INVERT = false;

    // rear left
    conf.SERVO6_MIN = 40; // shoulder
    conf.SERVO6_MAX = 120;
    conf.SERVO6_OFFSET = 0;
    conf.SERVO6_INVERT = false;

    conf.SERVO7_MIN = 0; // hind limb
    conf.SERVO7_MAX = 180;
    conf.SERVO7_OFFSET = 0;
    conf.SERVO7_INVERT = false;

    conf.SERVO8_MIN = 0; // ellbow
    conf.SERVO8_MAX = 180;
    conf.SERVO8_OFFSET = 0;
    conf.SERVO8_INVERT = false;

    // rear right
    conf.SERVO9_MIN = 40; //shoulder
    conf.SERVO9_MAX = 120;
    conf.SERVO9_OFFSET = 0;
    conf.SERVO9_INVERT = true;

    conf.SERVO10_MIN = 0; // hind limb
    conf.SERVO10_MAX = 180;
    conf.SERVO10_OFFSET = 0;
    conf.SERVO10_INVERT = false;

    conf.SERVO11_MIN = 0; // ellbow
    conf.SERVO11_MAX = 180;
    conf.SERVO11_OFFSET = 0;
    conf.SERVO11_INVERT = false;

    // others
    conf.SERVO12_MIN = 0;
    conf.SERVO12_MAX = 180;
    conf.SERVO12_OFFSET = 0;
    conf.SERVO12_INVERT = false;
    conf.SERVO13_MIN = 0;
    conf.SERVO13_MAX = 180;
    conf.SERVO13_OFFSET = 0;
    conf.SERVO13_INVERT = false;
    conf.SERVO14_MIN = 0;
    conf.SERVO14_MAX = 180;
    conf.SERVO14_OFFSET = 0;
    conf.SERVO14_INVERT = false;
    conf.SERVO15_MIN = 0;
    conf.SERVO15_MAX = 180;
    conf.SERVO15_OFFSET = 0;
    conf.SERVO15_INVERT = false;

    // 3.1 Initial Pose (degrees) of robot after start

    conf.SERVO0_HOME = 90; // front left shoulder
    conf.SERVO1_HOME = 0;  // front left hind limb
    conf.SERVO2_HOME = 0;  // front left ellbow

    conf.SERVO3_HOME = 90; // front right shoulder
    conf.SERVO4_HOME = 0;  // front right hind limb
    conf.SERVO5_HOME = 0;  // front right ellbow

    conf.SERVO6_HOME = 90; // rear left shoulder
    conf.SERVO7_HOME = 0;  // rear left hind limb
    conf.SERVO8_HOME = 0;  // rear left ellbow

    conf.SERVO9_HOME = 90; // rear right shoulder
    conf.SERVO10_HOME = 0; // rear right hind limb
    conf.SERVO11_HOME = 0; // rear right ellbow

    conf.SERVO12_HOME = 0; // others
    conf.SERVO13_HOME = 0;
    conf.SERVO14_HOME = 0;
    conf.SERVO15_HOME = 0;

    return conf;
}

/* *********************************************
* SETUP_WIFI  
*********************************************/
bool setup_wifi()
{
    int connectcounter = 0;

    delay(10);
    Serial.println();
    Serial.print("Connecting to ");
    Serial.println(config.SSID);

    WiFi.begin(config.SSID, config.PSK);

    while (WiFi.status() != WL_CONNECTED)
    {
        delay(500);
        Serial.print(".");

        connectcounter++;
        if (connectcounter > 20) // max connection attemps reached, abort
            return false;
    }

    Serial.println("");
    Serial.println("WiFi connected");
    Serial.println("IP address: ");
    Serial.println(WiFi.localIP());
    return true;
}

/*********************************************
* LOADCONFIG - Loads configuration from EEPROM into RAM
*********************************************/
configData_t loadConfig()
{
    configData_t conf;
    EEPROM.begin(4095);
    EEPROM.get(configEEPROMStart, conf);
    EEPROM.end();

    return conf;
}

/*********************************************
* SAVECONFIG - Save configuration from RAM into EEPROM
*********************************************/
void saveConfig(configData_t conf)
{
    conf.EEPROM = true; // set EEPROM true because we now create data in EEPROM, needed for EEPROM read check
    EEPROM.begin(4095);
    EEPROM.put(configEEPROMStart, conf);
    delay(200);
    EEPROM.commit(); // Only needed for ESP8266 to get data written
    EEPROM.end();    // Free RAM copy of structure
    Serial.println("Saved to EEPROM");
}

/*********************************************
* eraseCONFIG - Reset EEPROM bytes to '0' for the length of the data structure
*********************************************/
void eraseConfig()
{
    // Reset EEPROM bytes to '0' for the length of the data structure
    EEPROM.begin(4095);
    for (int i = configEEPROMStart; i < sizeof(config); i++)
    {
        EEPROM.write(i, 0);
    }
    delay(200);
    EEPROM.commit();
    EEPROM.end();
    Serial.println("EEPROM cleared");
}

/*********************************************
* GETSERVOCONFIG - read servo data (min, max, invert etc.) from config
*********************************************/
void getServoConfig(int count, int &min, int &max, int &offset, int &home, bool &inv)
{
    switch (count)
    {
    case 0:
        min = config.SERVO0_MIN;
        max = config.SERVO0_MAX;
        inv = config.SERVO0_INVERT;
        home = config.SERVO0_HOME;
        offset = config.SERVO0_OFFSET;
        break;
    case 1:
        min = config.SERVO1_MIN;
        max = config.SERVO1_MAX;
        inv = config.SERVO1_INVERT;
        home = config.SERVO1_HOME;
        offset = config.SERVO1_OFFSET;
        break;
    case 2:
        min = config.SERVO2_MIN;
        max = config.SERVO2_MAX;
        inv = config.SERVO2_INVERT;
        home = config.SERVO2_HOME;
        offset = config.SERVO2_OFFSET;
        break;
    case 3:
        min = config.SERVO3_MIN;
        max = config.SERVO3_MAX;
        inv = config.SERVO3_INVERT;
        home = config.SERVO3_HOME;
        offset = config.SERVO3_OFFSET;
        break;
    case 4:
        min = config.SERVO4_MIN;
        max = config.SERVO4_MAX;
        inv = config.SERVO4_INVERT;
        home = config.SERVO4_HOME;
        offset = config.SERVO4_OFFSET;
        break;
    case 5:
        min = config.SERVO5_MIN;
        max = config.SERVO5_MAX;
        inv = config.SERVO5_INVERT;
        home = config.SERVO5_HOME;
        offset = config.SERVO5_OFFSET;
        break;
    case 6:
        min = config.SERVO6_MIN;
        max = config.SERVO6_MAX;
        inv = config.SERVO6_INVERT;
        home = config.SERVO6_HOME;
        offset = config.SERVO6_OFFSET;
        break;
    case 7:
        min = config.SERVO7_MIN;
        max = config.SERVO7_MAX;
        inv = config.SERVO7_INVERT;
        home = config.SERVO7_HOME;
        offset = config.SERVO7_OFFSET;
        break;
    case 8:
        min = config.SERVO8_MIN;
        max = config.SERVO8_MAX;
        inv = config.SERVO8_INVERT;
        home = config.SERVO8_HOME;
        offset = config.SERVO8_OFFSET;
        break;
    case 9:
        min = config.SERVO9_MIN;
        max = config.SERVO9_MAX;
        inv = config.SERVO9_INVERT;
        home = config.SERVO9_HOME;
        offset = config.SERVO9_OFFSET;
        break;
    case 10:
        min = config.SERVO10_MIN;
        max = config.SERVO10_MAX;
        inv = config.SERVO10_INVERT;
        home = config.SERVO10_HOME;
        offset = config.SERVO10_OFFSET;
        break;
    case 11:
        min = config.SERVO11_MIN;
        max = config.SERVO11_MAX;
        inv = config.SERVO11_INVERT;
        home = config.SERVO11_HOME;
        offset = config.SERVO11_OFFSET;
        break;
    case 12:
        min = config.SERVO12_MIN;
        max = config.SERVO12_MAX;
        inv = config.SERVO12_INVERT;
        home = config.SERVO12_HOME;
        offset = config.SERVO12_OFFSET;
        break;
    case 13:
        min = config.SERVO13_MIN;
        max = config.SERVO13_MAX;
        inv = config.SERVO13_INVERT;
        home = config.SERVO13_HOME;
        offset = config.SERVO13_OFFSET;
        break;
    case 14:
        min = config.SERVO14_MIN;
        max = config.SERVO14_MAX;
        inv = config.SERVO14_INVERT;
        home = config.SERVO14_HOME;
        offset = config.SERVO14_OFFSET;
        break;
    case 15:
        min = config.SERVO15_MIN;
        max = config.SERVO15_MAX;
        inv = config.SERVO15_INVERT;
        home = config.SERVO15_HOME;
        offset = config.SERVO15_OFFSET;
        break;
    }
}

/*********************************************
* SETSERVOCONFIG - write servo data (min, max, invert etc.) from config
*********************************************/
void setServoConfig(int count, int &min, int &max, int &offset, int &home, bool &inv)
{
    switch (count)
    {
    case 0:
        config.SERVO0_MIN = min;
        config.SERVO0_MAX = max;
        config.SERVO0_INVERT = inv;
        config.SERVO0_HOME = home;
        config.SERVO0_OFFSET = offset;
        break;
    case 1:
        config.SERVO1_MIN = min;
        config.SERVO1_MAX = max;
        config.SERVO1_INVERT = inv;
        config.SERVO1_HOME = home;
        config.SERVO1_OFFSET = offset;
        break;
    case 2:
        config.SERVO2_MIN = min;
        config.SERVO2_MAX = max;
        config.SERVO2_INVERT = inv;
        config.SERVO2_HOME = home;
        config.SERVO2_OFFSET = offset;
        break;
    case 3:
        config.SERVO3_MIN = min;
        config.SERVO3_MAX = max;
        config.SERVO3_INVERT = inv;
        config.SERVO3_HOME = home;
        config.SERVO3_OFFSET = offset;
        break;
    case 4:
        config.SERVO4_MIN = min;
        config.SERVO4_MAX = max;
        config.SERVO4_INVERT = inv;
        config.SERVO4_HOME = home;
        config.SERVO4_OFFSET = offset;
        break;
    case 5:
        config.SERVO5_MIN = min;
        config.SERVO5_MAX = max;
        config.SERVO5_INVERT = inv;
        config.SERVO5_HOME = home;
        config.SERVO5_OFFSET = offset;
        break;
    case 6:
        config.SERVO6_MIN = min;
        config.SERVO6_MAX = max;
        config.SERVO6_INVERT = inv;
        config.SERVO6_HOME = home;
        config.SERVO6_OFFSET = offset;
        break;
    case 7:
        config.SERVO7_MIN = min;
        config.SERVO7_MAX = max;
        config.SERVO7_INVERT = inv;
        config.SERVO7_HOME = home;
        config.SERVO7_OFFSET = offset;
        break;
    case 8:
        config.SERVO8_MIN = min;
        config.SERVO8_MAX = max;
        config.SERVO8_INVERT = inv;
        config.SERVO8_HOME = home;
        config.SERVO8_OFFSET = offset;
        break;
    case 9:
        config.SERVO9_MIN = min;
        config.SERVO9_MAX = max;
        config.SERVO9_INVERT = inv;
        config.SERVO9_HOME = home;
        config.SERVO9_OFFSET = offset;
        break;
    case 10:
        config.SERVO10_MIN = min;
        config.SERVO10_MAX = max;
        config.SERVO10_INVERT = inv;
        config.SERVO10_HOME = home;
        config.SERVO10_OFFSET = offset;
        break;
    case 11:
        config.SERVO11_MIN = min;
        config.SERVO11_MAX = max;
        config.SERVO11_INVERT = inv;
        config.SERVO11_HOME = home;
        config.SERVO11_OFFSET = offset;
        break;
    case 12:
        config.SERVO12_MIN = min;
        config.SERVO12_MAX = max;
        config.SERVO12_INVERT = inv;
        config.SERVO12_HOME = home;
        config.SERVO12_OFFSET = offset;
        break;
    case 13:
        config.SERVO13_MIN = min;
        config.SERVO13_MAX = max;
        config.SERVO13_INVERT = inv;
        config.SERVO13_HOME = home;
        config.SERVO13_OFFSET = offset;
        break;
    case 14:
        config.SERVO14_MIN = min;
        config.SERVO14_MAX = max;
        config.SERVO14_INVERT = inv;
        config.SERVO14_HOME = home;
        config.SERVO14_OFFSET = offset;
        break;
    case 15:
        config.SERVO15_MIN = min;
        config.SERVO15_MAX = max;
        config.SERVO15_INVERT = inv;
        config.SERVO15_HOME = home;
        config.SERVO15_OFFSET = offset;
        break;
    }
}
