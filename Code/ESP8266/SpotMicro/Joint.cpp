/*
 * Joint.cpp
 *
 *  ******************************************************************************************************************************
 *  Class implementing a single joint of SpotMicro (aka a single Servo)
 *  *****************************************************************************************************************************
 */

#include "Joint.h"
#include <Arduino.h>

Joint::Joint()
{
    Servo = ServoEasing(PCA9685_DEFAULT_ADDRESS, &Wire);
}

bool Joint::init(int pin, int min, int max, int off, int homepos, bool invert)
{
    this->Servo.attach(pin);
    servomin = min;
    servomax = max;
    offset = off;
    home = homepos;
    this->invert = invert;
    this->Servo.setEasingType(EASE_SINE_IN_OUT);
}

bool Joint::init(int min, int max, int off, int homepos, bool invert)
{
    servomin = min;
    servomax = max;
    offset = off;
    home = homepos;
    this->invert = invert;
    this->Servo.setEasingType(EASE_SINE_IN_OUT);
}

bool Joint::moveAngle(int angle, int msec)
{
    int targetangle;

    if (invert == true)
    {
        targetangle = 180 - angle;
    }
    else
    {
        targetangle = angle;
    }
    if (angle < servomin || angle > servomax)
    {
        Serial.print("invalid target angle ");
        Serial.println(angle);
        return false;
    }

    Serial.print("move to ");
    Serial.println(targetangle);
    this->Servo.startEaseToD(targetangle, msec);
    isLastMoveComplete = false;
    while (this->Servo.isMovingAndCallYield())
    {
        ; // no delays here to avoid break between forth and back movement
    }
    isLastMoveComplete = true;
    return true;
}

void Joint::moveHome()
{
    this->Servo.write(this->home);
}

int Joint::getServoMin()
{
    return this->servomin;
}
int Joint::getServoMax()
{
    return this->servomax;
}
int Joint::getServoOffset()
{
    return this->offset;
}
int Joint::getServoHome()
{
    return this->home;
}
bool Joint::getServoInvert()
{
    return this->invert;
}

bool Joint::lastMoveComplete()
{
    return this->isLastMoveComplete;
}
