/* SpotMicro.cpp

 *  ******************************************************************************************************************************
    Low Level Firmware for SpotMicroAI
 *  *****************************************************************************************************************************
    This package contains low level firmware for SpotMicroAI, a four-legged robot inspired by BostonDynamics SpotMini

    SpotMicro uses at least 12 servo motors, three per leg. Most computation of servo movements will be done in ROS and send to
    the robot using ros_serial and will be processed by low-level firmware. This way, ROS master can run either on a embedded system
    inside the robot or on an external computer. If using external computer, commands will send to robot by wifi. For details, please 
    refer to https://github.com/PaddyCube/SpotMicroAI

    HARDWARE
    - ESP8266 module like Wemos D1 mini or others
    - PCA9685 PWM module to control the servos

    USED SOFTWARE AND LIBRARIES
    This file uses ServoEasing https://github.com/ArminJo/ServoEasing for smooth servo movement

    SPOTMICRO
    Initial design of SpotMicro was done by Deok-yeon Kim and can be found here https://www.thingiverse.com/thing:3445283
    Special thanks to bradprin to pick up initial design and bring it even further,
    especially for providing STEP files https://www.thingiverse.com/thing:3761340

    I published my own files here https://www.thingiverse.com/thing:3977841

    More thanks goes to Florian Wilk who gathered everything in github as some kind of official
    SpotMicro repository here https://github.com/FlorianWilk/SpotMicroAI

    Documentation can be found here https://spotmicroai.readthedocs.io/en/latest/
 *  *****************************************************************************************************************************
    This firmware is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/gpl.html>.

    Copyright (C) 2019  Patrick Weber
    www.weberpatrick.de

 *  *****************************************************************************************************************************
*/
#define USE_WIFI  // uncomment this, if you use USB cable between RaspberryPI and ESP8266

#ifndef USE_WIFI
#define ESP_SERIAL
#endif

#include "SpotMicro.h"
#include <ros.h>
#include <std_msgs/String.h>



// Array of servo objects
Joint allJoints[16];

// global variables
bool initcomplete = false;

// configuration;
configData_t config;

// ROS
ros::NodeHandle nh;
std_msgs::String str_msg;
ros::Publisher chatter("chatter", &str_msg);

char hello[13] = "hello world!";

/*********************************************
  SETUP
*********************************************/
void setup()
{
  Serial.begin(57600);
  delay(100);
  // Just to know which program is running on my Arduino
  Serial.println();
  Serial.print("START SPOTMICRO Version ");
  Serial.println(VERSION);

  // set configuration to factory default
  Serial.println();
  Serial.println("load factory settings");
  config = loadFactorySettings();

  // now check if EEPROM config is available
  Serial.println("Try to load configuration from EEPROM");
  configData_t confEEPROM = loadConfig();
  if (confEEPROM.EEPROM == true)
  {
    Serial.println("configuration found, load from EEPROM");
    config = confEEPROM;
  }
  else
  {
    Serial.println("no configuration found in EEPROM, keep factory default");
  }
  delay(100);

  // connect to WIFI
  Serial.println();
  if (config.useWifi == true)
  {
    Serial.println("Connect to WIFI");
    if (setup_wifi() == false)
    {
      Serial.println("Failed to connect to WIFI, abort");
      initcomplete = false;
      return;
    }
  }
  else
  {
    Serial.println("No wifi settings found, skip wifi");
  }
  delay(100);

  Serial.println();
  Serial.println("Building objects for robot joints");

  int min = 0;
  int max = 0;
  int offset = 0;
  int home = 0;
  bool invert = false;

  for (int i = 0; i < 16; i++)
  {
    // read min/max from config
    getServoConfig(i, min, max, offset, home, invert);

    // initialize servo objects
    if (allJoints[i].init(i, min, max, offset, home, invert) == false)
    {
      // something went wrong during servo init, robot not operational
      Serial.println("Failed to init servo " + i);
      Serial.println("Enter \'m\' to open main menu");
      initcomplete = false;
      return;
    }
  }

  // Set servos to start position.
  // This is the position where the movement starts.
  Serial.println("Move robot joints to initial pose");
  moveToInitPose();

  // Wait for servos to reach start position.
  delay(500);

  initcomplete = true;
  Serial.println("Enter \'m\' to open main menu");

#ifndef USE_WIFI // with serial connection, you can't enter menu in loop
  delay(5000);
  readSerial();
#endif

  // init ROS serial
  setup_ros();

}

void setup_ros()
{

#ifdef USE_WIFI
  if (config.useWifi == true)
  {
    nh.getHardware()->setConnection(config.ROS_Master, config.ROS_Serial_Port);
  }
#endif

  nh.initNode();

  // advertise and subscribe follows where
  nh.advertise(chatter);
}
/*********************************************
  LOOP
*********************************************/
void loop()
{

  if (initcomplete == true)
  {
    if (nh.connected())
    {
      str_msg.data = hello;
      chatter.publish( &str_msg );

      Serial.println("alive");

    } else {
      Serial.println("no connection to ROS master, is rosserial running?");
    }
    nh.spinOnce();

#ifdef USE_WIFI
    readSerial();
#endif

    delay(1000);

  }
  else
  {
    Serial.println("Initialization of SpotMicro failed - HALT");
    Serial.println("Enter \'m\' to open main menu");
    readSerial();
    delay(1000);
  }

}

/*********************************************
  Move robot to initial pose after boot
*********************************************/
void moveToInitPose()
{
  for (int i = 0; i < 16; i++)
  {
    allJoints[i].moveHome();
  }
}
