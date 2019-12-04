
#include <Arduino.h>
#include "SpotMicro.h"


/*********************************************
  Print menu to console
*********************************************/
void printMenu() {

  Serial.println("-----------MAIN MENU----------");
  Serial.println("s=move servo manual");
  Serial.println("0=exit");
}

/*********************************************
  Read char from console
*********************************************/
char waitCharConsole() {
  while (Serial.available() == 0);
  return (char)Serial.read();
}

/*********************************************
  Read string from console
*********************************************/
String waitStringConsole() {
  String s = "";
  char ch;
  while (true) {
    ch = waitCharConsole();
    if (ch == '\n' || ch == '\r')
      break;
    else
      s += ch;
  };
  return s;
}

/*********************************************
  process main menu
*********************************************/
void menu() {
  char ch;
  printMenu();
  while (true) {

    if (Serial.available() > 0) {
      ch = (char)Serial.read();
      switch (ch) {
        case '0':
          return;
        case 's':
          moveServoManual();
          printMenu();
          break;
        default:
          break;
      }
    }
    delay(10);
  }
}

/*********************************************
  Read console
*********************************************/
void readSerial() {
  // serial input
  if (Serial.available() > 0) {
    String cmd = waitStringConsole();
    char ch = cmd[0];

    switch (ch) {
      case 'm':
        menu(); // menu
        break;
    }
  }
}

/*********************************************
  clear console buffer
*********************************************/
void purgeConsole() {
  while (Serial.available())
    Serial.read();
}

/*********************************************
  Move single servo manual
*********************************************/
void moveServoManual() {
  char ch;
  int ServoNumber;
  int numberOfChars = 0;
  int angle;
  String readString;

  purgeConsole();  // clear console buffer
  Serial.println("Enter Servo number and angle");
  Serial.println("<number><0-180> ");
  Serial.println("Example: 0 40 moves Servo 0 to 40 degrees");

  Serial.println("Enter Servo number");
  delay(100);

  while (true) { // wait for user to enter servo number
    if (Serial.available() > 0) {
      readString = waitStringConsole();
      ServoNumber = readString.toInt();

      if (ServoNumber >= 0 && ServoNumber <= 15)
      {
        Serial.print("Enter angle for Servo ");
        Serial.println(ServoNumber);
        break;
      }
      else {
        Serial.println("invalid servo number");
        return;
      }
    }

  }
  delay(100);

  readString = "";
  purgeConsole(); // clear console buffer
  while (true) {   // wait for user to enter angle
    if (Serial.available() > 0) {
      readString = waitStringConsole();
      angle = readString.toInt();

      if (angle >= 0 && angle <= 180)
      {
        Serial.print("Move Servo ");
        Serial.print(ServoNumber);
        Serial.print(" to angle ");
        Serial.println(angle);
        break;
      }
      else {
        Serial.println("invalid angle");
        return;
      }
    }
  }
  // move servo here
  allJoints[ServoNumber].moveAngle(angle, 5000);
}
