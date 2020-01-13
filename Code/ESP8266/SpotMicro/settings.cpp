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
    conf.servos[0].SERVO_MIN = 10; // shoulder
    conf.servos[0].SERVO_MAX = 118;
    conf.servos[0].SERVO_OFFSET = 0;
    conf.servos[0].SERVO_INVERT = false;

    conf.servos[1].SERVO_MIN = 0; // hind limb
    conf.servos[1].SERVO_MAX = 180;
    conf.servos[1].SERVO_OFFSET = 0;
    conf.servos[1].SERVO_INVERT = false;

    conf.servos[2].SERVO_MIN = 0; // ellbow
    conf.servos[2].SERVO_MAX = 180;
    conf.servos[2].SERVO_OFFSET = 0;
    conf.servos[2].SERVO_INVERT = false;

    // front right
    conf.servos[3].SERVO_MIN = 10; // shoulder
    conf.servos[3].SERVO_MAX = 118;
    conf.servos[3].SERVO_OFFSET = 0;
    conf.servos[3].SERVO_INVERT = true;

    conf.servos[4].SERVO_MIN = 0; // hind limb
    conf.servos[4].SERVO_MAX = 180;
    conf.servos[4].SERVO_OFFSET = 0;
    conf.servos[4].SERVO_INVERT = true;

    conf.servos[5].SERVO_MIN = 0; // ellbow
    conf.servos[5].SERVO_MAX = 180;
    conf.servos[5].SERVO_OFFSET = 0;
    conf.servos[5].SERVO_INVERT = true;

    // rear left
    conf.servos[6].SERVO_MIN = 40; // shoulder
    conf.servos[6].SERVO_MAX = 120;
    conf.servos[6].SERVO_OFFSET = 0;
    conf.servos[6].SERVO_INVERT = false;

    conf.servos[7].SERVO_MIN = 0; // hind limb
    conf.servos[7].SERVO_MAX = 180;
    conf.servos[7].SERVO_OFFSET = 0;
    conf.servos[7].SERVO_INVERT = false;

    conf.servos[8].SERVO_MIN = 0; // ellbow
    conf.servos[8].SERVO_MAX = 180;
    conf.servos[8].SERVO_OFFSET = 0;
    conf.servos[8].SERVO_INVERT = false;

    // rear right
    conf.servos[9].SERVO_MIN = 40; //shoulder
    conf.servos[9].SERVO_MAX = 120;
    conf.servos[9].SERVO_OFFSET = 0;
    conf.servos[9].SERVO_INVERT = true;

    conf.servos[10].SERVO_MIN = 0; // hind limb
    conf.servos[10].SERVO_MAX = 180;
    conf.servos[10].SERVO_OFFSET = 0;
    conf.servos[10].SERVO_INVERT = true;

    conf.servos[11].SERVO_MIN = 0; // ellbow
    conf.servos[11].SERVO_MAX = 180;
    conf.servos[11].SERVO_OFFSET = 0;
    conf.servos[11].SERVO_INVERT = true;

    // others
    conf.servos[12].SERVO_MIN = 0;
    conf.servos[12].SERVO_MAX = 180;
    conf.servos[12].SERVO_OFFSET = 0;
    conf.servos[12].SERVO_INVERT = false;
    conf.servos[13].SERVO_MIN = 0;
    conf.servos[13].SERVO_MAX = 180;
    conf.servos[13].SERVO_OFFSET = 0;
    conf.servos[13].SERVO_INVERT = false;
    conf.servos[14].SERVO_MIN = 0;
    conf.servos[14].SERVO_MAX = 180;
    conf.servos[14].SERVO_OFFSET = 0;
    conf.servos[14].SERVO_INVERT = false;
    conf.servos[15].SERVO_MIN = 0;
    conf.servos[15].SERVO_MAX = 180;
    conf.servos[15].SERVO_OFFSET = 0;
    conf.servos[15].SERVO_INVERT = false;

    // 3.1 Initial Pose (degrees) of robot after start

    conf.servos[0].SERVO_HOME = 90; // front left shoulder
    conf.servos[1].SERVO_HOME = 180;  // front left hind limb
    conf.servos[2].SERVO_HOME = 0;  // front left ellbow

    conf.servos[3].SERVO_HOME = 90; // front right shoulder
    conf.servos[4].SERVO_HOME = 180;  // front right hind limb
    conf.servos[5].SERVO_HOME = 0;  // front right ellbow

    conf.servos[6].SERVO_HOME = 90; // rear left shoulder
    conf.servos[7].SERVO_HOME = 180;  // rear left hind limb
    conf.servos[8].SERVO_HOME = 0;  // rear left ellbow

    conf.servos[9].SERVO_HOME = 90; // rear right shoulder
    conf.servos[10].SERVO_HOME = 180; // rear right hind limb
    conf.servos[11].SERVO_HOME = 0; // rear right ellbow

    conf.servos[12].SERVO_HOME = 0; // others
    conf.servos[13].SERVO_HOME = 0;
    conf.servos[14].SERVO_HOME = 0;
    conf.servos[15].SERVO_HOME = 0;

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
        min = config.servos[count].SERVO_MIN;
        max = config.servos[count].SERVO_MAX;
        inv = config.servos[count].SERVO_INVERT;
        home = config.servos[count].SERVO_HOME;
        offset = config.servos[count].SERVO_OFFSET;
}

/*********************************************
* SETSERVOCONFIG - write servo data (min, max, invert etc.) from config
*********************************************/
void setServoConfig(int count, int &min, int &max, int &offset, int &home, bool &inv)
{
        config.servos[count].SERVO_MIN = min;
        config.servos[count].SERVO_MAX = max;
        config.servos[count].SERVO_INVERT = inv;
        config.servos[count].SERVO_HOME = home;
        config.servos[count].SERVO_OFFSET = offset;
}
