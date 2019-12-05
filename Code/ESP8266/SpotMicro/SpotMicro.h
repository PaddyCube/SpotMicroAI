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
#include "config.h"

const char VERSION[] = "V0.0.1";

// Array of servo objects
extern Joint allJoints[16];

// global variables
extern bool initcomplete;
extern configData_t config;

void printMenu();
void printMenu();
char waitCharConsole();
String waitStringConsole();
void menu();
void readSerial();
void purgeConsole();
void moveServoManual();

void getServoConfig(int count, int &min, int &max, int &off, bool &inv);
bool setup_wifi();
configData_t loadConfig();
configData_t loadFactorySettings();
void saveConfig(configData_t);
void eraseConfig();



#endif
