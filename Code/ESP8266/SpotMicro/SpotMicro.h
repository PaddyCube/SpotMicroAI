/*
 * ******************************************************************************************************************************
   General Settings of Low Level Firmware for SpotMicroAI
 * *****************************************************************************************************************************
    General settings related to wifi and Servo can be found here

    You need to adjust these settings according to your needs

   Table of content:
   3 Servo motor settings
   3.1 servo degrees of initial pose
 * ******************************************************************************************************************************
*/

#ifndef SPOTMICRO_H_
#define SPOTMICRO_H_


#include "Joint.h"

const char VERSION[] = "V0.0.1";

// Array of servo objects
extern Joint allJoints[16];

// global variables
extern bool initcomplete;


void printMenu();
void printMenu();
char waitCharConsole();
String waitStringConsole();
void menu();
void readSerial();
void purgeConsole();
void moveServoManual();

void getServoConfig(int count, int &min, int &max, bool &inv);
bool setup_wifi();

/* ******************************************************************************************************************************
   1 Servo min and max angles. Set these values to avoid collision with robot body
 * ******************************************************************************************************************************/

// front left
const int SERVO0_MIN = 10;// shoulder
const int SERVO0_MAX = 118;
const bool SERVO0_INVERT = false;

const int SERVO1_MIN = 0; // hind limb
const int SERVO1_MAX = 180;
const bool SERVO1_INVERT = false;

const int SERVO2_MIN = 0;  // ellbow
const int SERVO2_MAX = 180;
const bool SERVO2_INVERT = false;

// front right
const int SERVO3_MIN = 10; // shoulder
const int SERVO3_MAX = 118;
const bool SERVO3_INVERT = true;

const int SERVO4_MIN = 0;  // hind limb
const int SERVO4_MAX = 180;
const bool SERVO4_INVERT = false;

const int SERVO5_MIN = 0;  // ellbow
const int SERVO5_MAX = 180;
const bool SERVO5_INVERT = false;

// rear left
const int SERVO6_MIN = 40;  // shoulder
const int SERVO6_MAX = 120;
const bool SERVO6_INVERT = false;

const int SERVO7_MIN = 0; // hind limb
const int SERVO7_MAX = 180;
const bool SERVO7_INVERT = false;

const int SERVO8_MIN = 0;  // ellbow
const int SERVO8_MAX = 180;
const bool SERVO8_INVERT = false;

// rear right
const int SERVO9_MIN = 40;  //shoulder
const int SERVO9_MAX = 120;
const bool SERVO9_INVERT = true;

const int SERVO10_MIN = 0;  // hind limb
const int SERVO10_MAX = 180;
const bool SERVO10_INVERT = false;

const int SERVO11_MIN = 0;  // ellbow
const int SERVO11_MAX = 180;
const bool SERVO11_INVERT = false;

// others
const int SERVO12_MIN = 0;
const int SERVO12_MAX = 180;
const bool SERVO12_INVERT = false;
const int SERVO13_MIN = 0;
const int SERVO13_MAX = 180;
const bool SERVO13_INVERT = false;
const int SERVO14_MIN = 0;
const int SERVO14_MAX = 180;
const bool SERVO14_INVERT = false;
const int SERVO15_MIN = 0;
const int SERVO15_MAX = 180;
const bool SERVO15_INVERT = false;

/* **********************************************************************************
   3.1 Initial Pose (degrees) of robot after start
 * **********************************************************************************/

const int SERVO0_HOME = 90;  // front left shoulder
const int SERVO1_HOME = 0;   // front left hind limb
const int SERVO2_HOME = 0;   // front left ellbow

const int SERVO3_HOME = 90;  // front right shoulder
const int SERVO4_HOME = 0;   // front right hind limb
const int SERVO5_HOME = 0;   // front right ellbow

const int SERVO6_HOME = 90;  // rear left shoulder
const int SERVO7_HOME = 0;   // rear left hind limb
const int SERVO8_HOME = 0;   // rear left ellbow

const int SERVO9_HOME = 90;   // rear right shoulder
const int SERVO10_HOME = 0;   // rear right hind limb
const int SERVO11_HOME = 0;   // rear right ellbow

const int SERVO12_HOME = 0; // others
const int SERVO13_HOME = 0;
const int SERVO14_HOME = 0;
const int SERVO15_HOME = 0;

#endif
