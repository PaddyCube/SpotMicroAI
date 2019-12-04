/*
 *  ******************************************************************************************************************************
 *  Functions which are used to setup and init the robot
 *  *****************************************************************************************************************************/

#include <Arduino.h>

#include "SpotMicro.h"


#include <ESP8266WiFi.h>

const char* SSID = "YOUR-SSID";
const char* PSK = "YOUR-PSK";
const char* ROS_MASTER = "192.168.178.1";

/* *********************************************
* SETUP_WIFI  
*********************************************/
bool setup_wifi()
{
  int connectcounter = 0;

  delay(10);
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(SSID);

  WiFi.begin(SSID, PSK);

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
* GETSERVOCONFIG - read servo data (min, max, invert etc.) from config
*********************************************/
void getServoConfig(int count, int &min, int &max, bool &inv)
{
    switch (count)
    {
    case 0:
        min = SERVO0_MIN;
        max = SERVO0_MAX;
        inv = SERVO0_INVERT;
        break;
    case 1:
        min = SERVO1_MIN;
        max = SERVO1_MAX;
        inv = SERVO1_INVERT;
        break;
    case 2:
        min = SERVO2_MIN;
        max = SERVO2_MAX;
        inv = SERVO2_INVERT;
        break;
    case 3:
        min = SERVO3_MIN;
        max = SERVO3_MAX;
        inv = SERVO3_INVERT;
        break;
    case 4:
        min = SERVO4_MIN;
        max = SERVO4_MAX;
        inv = SERVO4_INVERT;
        break;
    case 5:
        min = SERVO5_MIN;
        max = SERVO5_MAX;
        inv = SERVO5_INVERT;
        break;
    case 6:
        min = SERVO6_MIN;
        max = SERVO6_MAX;
        inv = SERVO6_INVERT;
        break;
    case 7:
        min = SERVO7_MIN;
        max = SERVO7_MAX;
        inv = SERVO7_INVERT;
        break;
    case 8:
        min = SERVO8_MIN;
        max = SERVO8_MAX;
        inv = SERVO8_INVERT;
        break;
    case 9:
        min = SERVO9_MIN;
        max = SERVO9_MAX;
        inv = SERVO9_INVERT;
        break;
    case 10:
        min = SERVO10_MIN;
        max = SERVO10_MAX;
        inv = SERVO10_INVERT;
        break;
    case 11:
        min = SERVO11_MIN;
        max = SERVO11_MAX;
        inv = SERVO11_INVERT;
        break;
    case 12:
        min = SERVO12_MIN;
        max = SERVO12_MAX;
        inv = SERVO12_INVERT;
        break;
    case 13:
        min = SERVO13_MIN;
        max = SERVO13_MAX;
        inv = SERVO13_INVERT;
        break;
    case 14:
        min = SERVO14_MIN;
        max = SERVO14_MAX;
        inv = SERVO14_INVERT;
        break;
    case 15:
        min = SERVO15_MIN;
        max = SERVO15_MAX;
        inv = SERVO15_INVERT;
        break;
    }
}
