/*
 * Joint.h
 *
 *  ******************************************************************************************************************************
 *  Class defining a single joint of SpotMicro (aka a single Servo)
 *  *****************************************************************************************************************************
 */

/*
 * Constructor to specify the expander address (needed at least if you use more than one expander board)
 * and to specify the I2C implementation library.
 * This can be done for each servo separately, but you can not (yet) mix the 3 different
 * Servo implementation libraries (Arduino Servo, Lightweight Servo and I2C Expansion Board)
 */

#ifndef JOINT_H_
#define JOINT_H_

#include "ServoEasing.h"

class Joint
{
public:
      Joint();
      bool init(int pin, int min, int max, int off, bool invert);
      bool moveAngle(int angle, int msec);
      int getServoMin();
      int getServoMax();
      bool lastMoveComplete();

      ServoEasing Servo;

private:
      int servomin;
      int servomax;
      int offset;
      bool invert;
      bool isLastMoveComplete = true;
};

#endif
