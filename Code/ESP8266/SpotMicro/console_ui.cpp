
#include <Arduino.h>
#include "SpotMicro.h"

/*********************************************
  Print menu to console
*********************************************/
void printMenu()
{

  Serial.println();
  Serial.println("-----------MAIN MENU----------");
  Serial.println("f=delete all USER settings (reset all user settings in EEPROM)");
  Serial.println("s=save USER settings (save user settings to EEPROM)");
  Serial.println("x=print current settings");
  Serial.println("1=communications menu (setup ROS & WIFI)");
  Serial.println("2=Servo settings");
  Serial.println("m=move servo manual");
  Serial.println("0=exit");
}

/*********************************************
  Read char from console
*********************************************/
char waitCharConsole()
{
  while (Serial.available() == 0)
    ;
  return (char)Serial.read();
}

/*********************************************
  Read string from console
*********************************************/
String waitStringConsole()
{
  String s = "";
  char ch;
  while (true)
  {
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
void menu()
{
  char ch;
  printMenu();
  while (true)
  {

    if (Serial.available() > 0)
    {
      ch = (char)Serial.read();
      switch (ch)
      {
      case '0': // exit
        return;
      case 'f': // factory reset (delete EEPROM)
        eraseConfig();
        break;
      case 's': // save to EEPROM
        saveConfig(config);
        break;
      case 'x': // print all settings
        printSettings();
        printMenu();
        break;
      case '1': // communication menu
        settingsWifi();
        printMenu();
        break;
      case '2': // servo menu
        settingsServo();
        printMenu();
        break;
      case 'm':
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
void readSerial()
{
  // serial input
  if (Serial.available() > 0)
  {
    String cmd = waitStringConsole();
    char ch = cmd[0];

    switch (ch)
    {
    case 'm':
      menu(); // menu
      break;
    }
  }
}

/*********************************************
  clear console buffer
*********************************************/
void purgeConsole()
{
  while (Serial.available())
    Serial.read();
}

/*********************************************
  Setup WIFI settings
*********************************************/
void settingsWifi()
{

  while (true)
  {
    Serial.println();
    Serial.println(F("COMMUNICATIONS MENU  === WIFI =="));
    Serial.print(" WIFI active: ");
    Serial.println(config.useWifi);
    Serial.print("SSID: ");
    Serial.println(config.SSID);
    Serial.print("PSK: ");
    Serial.println(config.PSK);
    Serial.println();
    Serial.println(" 1=configure");
    Serial.println(" 0=Main Menu");
    Serial.println();

    delay(100);
    purgeConsole();

    switch (waitCharConsole())
    {
    case '0':
      return;
    case '1':
      Serial.print("Activate WIFI (0/1)?: ");
      delay(100);
      purgeConsole();
      if (waitCharConsole() == '1')
      {
        config.useWifi = true;
      }
      else
      {
        config.useWifi = false;
      }

      Serial.println(config.useWifi);
      if (config.useWifi == true)
      {
        Serial.print("Enter SSID: ");
        delay(100);
        purgeConsole();
        strncpy(config.SSID, waitStringConsole().c_str(), sizeof(config.SSID));
        Serial.println(config.SSID);
        Serial.println("Enter PSK: ");
        delay(100);
        purgeConsole();
        strncpy(config.PSK, waitStringConsole().c_str(), sizeof(config.PSK));
      }
      return;
    }
  }
}

/*********************************************
  Setup a single Servo
*********************************************/
void settingsServo()
{
  int servo = 99;
  int min = 0;
  int max = 0;
  bool invert = false;
  int offset = 0;
  int home = 0;

  while (true)
  {
    Serial.println();
    Serial.println("--------- Servo setup ---------");
    Serial.println("Enter Servo number (0-15)");

    delay(100);
    purgeConsole();

    servo = waitStringConsole().toInt();

    if (servo < 0 || servo > 15)
    {
      Serial.print("invalid servo number ");
      Serial.println(servo);
      return;
    }

    Serial.print("Current settings of servo ");
    Serial.println(servo);
    Serial.print("min ");
    Serial.println(allJoints[servo].getServoMin());
    Serial.print("max ");
    Serial.println(allJoints[servo].getServoMax());
    Serial.print("offset ");
    Serial.println(allJoints[servo].getServoOffset());
    Serial.print("home ");
    Serial.println(allJoints[servo].getServoHome());
    Serial.print("invert ");
    Serial.println(allJoints[servo].getServoInvert());
    Serial.println();
    Serial.println("Enter \'1\' to change settings or \'0\' to leave");

    delay(100);
    purgeConsole();

    switch (waitCharConsole())
    {
    case '0':
      return;
    case '1':
      Serial.print("Enter min angle (0-180): ");
      delay(100);
      purgeConsole();
      min = waitStringConsole().toInt();
      Serial.println(min);
      if (min < 0 || min > 180)
      {
        Serial.print("invalid angle ");
        Serial.print(min);
        Serial.println(", quit!");
        return;
      }
      Serial.print("Enter max angle (0-180): ");
      delay(100);
      purgeConsole();
      max = waitStringConsole().toInt();
      Serial.println(max);
      if (max < 0 || max > 180 || max < min)
      {
        Serial.print("invalid angle ");
        Serial.print(max);
        Serial.println(", quit!");
        return;
      }

      Serial.print("Enter offset (-20/20): ");
      delay(100);
      purgeConsole();
      offset = waitStringConsole().toInt();
      Serial.println(offset);
      if (offset < -20 || offset > 20)
      {
        Serial.print("invalid offset ");
        Serial.print(offset);
        Serial.println(", quit!");
        return;
      }

      Serial.print("Enter home position (0-180): ");
      delay(100);
      purgeConsole();
      home = waitStringConsole().toInt();
      Serial.println(home);
      if (home < 0 || home > 180)
      {
        Serial.print("invalid home position ");
        Serial.print(home);
        Serial.println(", quit!");
        return;
      }
      Serial.print("Invert servo direction (0/1)?: ");
      delay(100);
      purgeConsole();
      if (waitCharConsole() == '1')
      {
        invert = true;
      }
      else
      {
        invert = false;
      }
      Serial.println(invert);

      // if we reach this point, al configurations are valid
      setServoConfig(servo, min, max, offset, home, invert);
      allJoints[servo].init(min, max, offset, home, invert);
      allJoints[servo].moveHome();
      Serial.println("Settings changed and Join re-initialized.");
      Serial.println("ATTENTION you need to save user settings now if you want to persist changes");
      return;
    }
  }
}

/*********************************************
  Move single servo manual
*********************************************/
void moveServoManual()
{
  char ch;
  int ServoNumber;
  int numberOfChars = 0;
  int angle;
  String readString;

  purgeConsole(); // clear console buffer
  Serial.println("Enter Servo number and angle");
  Serial.println("<number><0-180> ");
  Serial.println("Example: 0 40 moves Servo 0 to 40 degrees");

  Serial.println("Enter Servo number");
  delay(100);

  while (true)
  { // wait for user to enter servo number
    if (Serial.available() > 0)
    {
      readString = waitStringConsole();
      ServoNumber = readString.toInt();

      if (ServoNumber >= 0 && ServoNumber <= 15)
      {
        Serial.print("Enter angle for Servo ");
        Serial.println(ServoNumber);
        break;
      }
      else
      {
        Serial.println("invalid servo number");
        return;
      }
    }
  }
  delay(100);

  readString = "";
  purgeConsole(); // clear console buffer
  while (true)
  { // wait for user to enter angle
    if (Serial.available() > 0)
    {
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
      else
      {
        Serial.println("invalid angle");
        return;
      }
    }
  }
  // move servo here
  allJoints[ServoNumber].moveAngle(angle, 5000);
}

/*********************************************
  Output current settings to console
*********************************************/
void printSettings()
{
  Serial.println("---------- Connections --------------------------------------");
  Serial.print("Use WIFI                      :");
  Serial.println(config.useWifi);
  Serial.print("SSID                          :");
  Serial.println(config.SSID);
  Serial.print("PSK                           :");
  Serial.println(config.PSK);
  Serial.println("---------- Servo limits--------------------------------------");
  Serial.println("Servo \t min \t max \t off \t inv \t home");
  Serial.print("0");
  Serial.print("\t");
  Serial.print(config.SERVO0_MIN);
  Serial.print("\t");
  Serial.print(config.SERVO0_MAX);
  Serial.print("\t");
  Serial.print(config.SERVO0_OFFSET);
  Serial.print("\t");
  Serial.print(config.SERVO0_INVERT);
  Serial.print("\t");
  Serial.println(config.SERVO0_HOME);

  Serial.print("1");
  Serial.print("\t");
  Serial.print(config.SERVO1_MIN);
  Serial.print("\t");
  Serial.print(config.SERVO1_MAX);
  Serial.print("\t");
  Serial.print(config.SERVO1_OFFSET);
  Serial.print("\t");
  Serial.print(config.SERVO1_INVERT);
  Serial.print("\t");
  Serial.println(config.SERVO1_HOME);

  Serial.print("2");
  Serial.print("\t");
  Serial.print(config.SERVO2_MIN);
  Serial.print("\t");
  Serial.print(config.SERVO2_MAX);
  Serial.print("\t");
  Serial.print(config.SERVO2_OFFSET);
  Serial.print("\t");
  Serial.print(config.SERVO2_INVERT);
  Serial.print("\t");
  Serial.println(config.SERVO2_HOME);

  Serial.print("3");
  Serial.print("\t");
  Serial.print(config.SERVO3_MIN);
  Serial.print("\t");
  Serial.print(config.SERVO3_MAX);
  Serial.print("\t");
  Serial.print(config.SERVO3_OFFSET);
  Serial.print("\t");
  Serial.print(config.SERVO3_INVERT);
  Serial.print("\t");
  Serial.println(config.SERVO3_HOME);

  Serial.print("4");
  Serial.print("\t");
  Serial.print(config.SERVO4_MIN);
  Serial.print("\t");
  Serial.print(config.SERVO4_MAX);
  Serial.print("\t");
  Serial.print(config.SERVO4_OFFSET);
  Serial.print("\t");
  Serial.print(config.SERVO4_INVERT);
  Serial.print("\t");
  Serial.println(config.SERVO4_HOME);

  Serial.print("5");
  Serial.print("\t");
  Serial.print(config.SERVO5_MIN);
  Serial.print("\t");
  Serial.print(config.SERVO5_MAX);
  Serial.print("\t");
  Serial.print(config.SERVO5_OFFSET);
  Serial.print("\t");
  Serial.print(config.SERVO5_INVERT);
  Serial.print("\t");
  Serial.println(config.SERVO5_HOME);

  Serial.print("6");
  Serial.print("\t");
  Serial.print(config.SERVO6_MIN);
  Serial.print("\t");
  Serial.print(config.SERVO6_MAX);
  Serial.print("\t");
  Serial.print(config.SERVO6_OFFSET);
  Serial.print("\t");
  Serial.print(config.SERVO6_INVERT);
  Serial.print("\t");
  Serial.println(config.SERVO6_HOME);

  Serial.print("7");
  Serial.print("\t");
  Serial.print(config.SERVO7_MIN);
  Serial.print("\t");
  Serial.print(config.SERVO7_MAX);
  Serial.print("\t");
  Serial.print(config.SERVO7_OFFSET);
  Serial.print("\t");
  Serial.print(config.SERVO7_INVERT);
  Serial.print("\t");
  Serial.println(config.SERVO7_HOME);

  Serial.print("8");
  Serial.print("\t");
  Serial.print(config.SERVO8_MIN);
  Serial.print("\t");
  Serial.print(config.SERVO8_MAX);
  Serial.print("\t");
  Serial.print(config.SERVO8_OFFSET);
  Serial.print("\t");
  Serial.print(config.SERVO8_INVERT);
  Serial.print("\t");
  Serial.println(config.SERVO8_HOME);

  Serial.print("9");
  Serial.print("\t");
  Serial.print(config.SERVO9_MIN);
  Serial.print("\t");
  Serial.print(config.SERVO9_MAX);
  Serial.print("\t");
  Serial.print(config.SERVO9_OFFSET);
  Serial.print("\t");
  Serial.print(config.SERVO9_INVERT);
  Serial.print("\t");
  Serial.println(config.SERVO9_HOME);

  Serial.print("10");
  Serial.print("\t");
  Serial.print(config.SERVO10_MIN);
  Serial.print("\t");
  Serial.print(config.SERVO10_MAX);
  Serial.print("\t");
  Serial.print(config.SERVO10_OFFSET);
  Serial.print("\t");
  Serial.print(config.SERVO10_INVERT);
  Serial.print("\t");
  Serial.println(config.SERVO10_HOME);

  Serial.print("11");
  Serial.print("\t");
  Serial.print(config.SERVO11_MIN);
  Serial.print("\t");
  Serial.print(config.SERVO11_MAX);
  Serial.print("\t");
  Serial.print(config.SERVO11_OFFSET);
  Serial.print("\t");
  Serial.print(config.SERVO11_INVERT);
  Serial.print("\t");
  Serial.println(config.SERVO11_HOME);

  Serial.print("12");
  Serial.print("\t");
  Serial.print(config.SERVO12_MIN);
  Serial.print("\t");
  Serial.print(config.SERVO12_MAX);
  Serial.print("\t");
  Serial.print(config.SERVO12_OFFSET);
  Serial.print("\t");
  Serial.print(config.SERVO12_INVERT);
  Serial.print("\t");
  Serial.println(config.SERVO12_HOME);

  Serial.print("13");
  Serial.print("\t");
  Serial.print(config.SERVO13_MIN);
  Serial.print("\t");
  Serial.print(config.SERVO13_MAX);
  Serial.print("\t");
  Serial.print(config.SERVO13_OFFSET);
  Serial.print("\t");
  Serial.print(config.SERVO13_INVERT);
  Serial.print("\t");
  Serial.println(config.SERVO13_HOME);

  Serial.print("14");
  Serial.print("\t");
  Serial.print(config.SERVO14_MIN);
  Serial.print("\t");
  Serial.print(config.SERVO14_MAX);
  Serial.print("\t");
  Serial.print(config.SERVO14_OFFSET);
  Serial.print("\t");
  Serial.print(config.SERVO14_INVERT);
  Serial.print("\t");
  Serial.println(config.SERVO14_HOME);

  Serial.print("15");
  Serial.print("\t");
  Serial.print(config.SERVO15_MIN);
  Serial.print("\t");
  Serial.print(config.SERVO15_MAX);
  Serial.print("\t");
  Serial.print(config.SERVO15_OFFSET);
  Serial.print("\t");
  Serial.print(config.SERVO15_INVERT);
  Serial.print("\t");
  Serial.println(config.SERVO15_HOME);
}