/* SpotMicro.cpp

 *  ******************************************************************************************************************************
    Low Level Firmware for SpotMicroAI
 *  *****************************************************************************************************************************
    This package contains low level firmware for SpotMicroAI, a four-legged robot inspired by BostonDynamics SpotMini

    SpotMicro uses at least 12 servo motors, three per leg. Most computation of servo movements will be done in ROS and send to
    the robot using ros_serial and will be processed by low-level firmware. This way, ROS master can run either on a embedded system
    inside the robot or on an external computer. If using external computer, commands will send to robot by wifi

    HARDWARE
    - ESP8266 module like Wemos D1 mini or others
    - PCA9685 PWM module to control the servos

    USED SOFTWARE AND LIBRARIES
    This file uses ServoEasing https://github.com/ArminJo/ServoEasing for smooth servo movement
    
    SPOTMICRO
    Initial design of SpotMicro was done by Deok-yeon Kim and can be found here https://www.thingiverse.com/thing:3445283
    Special thanks to bradprin to pick up initial design and bring it even further,
    especially for providing STEP files https://www.thingiverse.com/thing:3761340

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

#include "SpotMicro.h"
// Array of servo objects
Joint allJoints[16];

// global variables
bool initcomplete = false;

// configuration;
configData_t config;

/*********************************************
  SETUP
*********************************************/
void setup()
{
  Serial.begin(115200);
  delay(100);
  // Just to know which program is running on my Arduino
  Serial.print("START SPOTMICRO Version ");
  Serial.println(VERSION);

  // set configuration to factory default
  config = loadFactorySettings();

  // now check if EEPROM config is available
  configData_t confEEPROM = loadConfig();
  if (confEEPROM.EEPROM == true)
  {
    config = confEEPROM;
  }

  // connect to WIFI
  if (config.useWifi == true)
  {
    if (setup_wifi() == false)
    {
      Serial.println("Failed to connect to WIFI, abort");
      initcomplete = false;
      return;
    }
  }

  // init ROS serial

  Serial.println("Building objects for robot joints");

  int min = 0;
  int max = 0;
  int offset = 0;
  bool invert = false;

  for (int i = 0; i < 16; i++)
  {
    // read min/max from config
    getServoConfig(i, min, max, offset, invert);

    // initialize servo objects
    if (allJoints[i].init(i, min, max, offset, invert) == false)
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
  Serial.println("Try to communicate with PCA9685 Expander by TWI / I2C");
  moveToInitPose();
  Serial.println("Communication with with PCA9685 Expander was successful");

  // Wait for servos to reach start position.
  delay(500);

  initcomplete = true;
  Serial.println("Enter \'m\' to open main menu");
}

/*********************************************
  LOOP
*********************************************/
void loop()
{

  if (initcomplete == true)
  {
  }
  else
  {
    Serial.println("Initialization of SpotMicro failed - HALT");
    readSerial();
    delay(5000);
  }

  while (initcomplete == true)
  {

    readSerial();

    /*     Serial.println("Move to 0 degree and back nonlinear in one second each using interrupts of Timer1");
      //  Servo1.setEasingType(EASE_CUBIC_IN_OUT);
      //----Servo1.setEasingType(EASE_SINE_IN_OUT);
      //----Servo0.setEasingType(EASE_SINE_IN_OUT);
      //  for (int i = 0; i < 3; ++i) {
      //Servo1.startEaseToD(0, 1000);
      //Servo0.startEaseToD(0, 1000);
      while (Servo1.isMovingAndCallYield() || Servo0.isMovingAndCallYield())
      {
        ; // no delays here to avoid break between forth and back movement
      }
      Serial.println("Move to 180 degree and back nonlinear in one second each using interrupts of Timer1");
      Servo1.startEaseToD(180, 2000);
      Servo0.startEaseToD(90, 2000);
      while (Servo1.isMovingAndCallYield() || Servo0.isMovingAndCallYield())
      {
        ; // no delays here to avoid break between forth and back movement
      }
      Serial.println("Move to 90 degree and back nonlinear in one second each using interrupts of Timer1");
      Servo1.startEaseToD(90, 1000);
      Servo0.startEaseToD(45, 1000);
      while (Servo1.isMovingAndCallYield() || Servo0.isMovingAndCallYield())
      {
        ; // no delays here to avoid break between forth and back movement
      }
      //   } */
    Serial.println("alive");
    delay(1000);
  }
}

/*********************************************
  Move robot to initial pose after boot
*********************************************/
void moveToInitPose()
{
  allJoints[0].Servo.write(config.SERVO0_HOME);
  allJoints[3].Servo.write(config.SERVO3_HOME);
  allJoints[6].Servo.write(config.SERVO6_HOME);
  allJoints[9].Servo.write(config.SERVO9_HOME);
}
