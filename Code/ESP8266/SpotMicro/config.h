#ifndef CONFIG_H
#define CONFIG_H

typedef struct
{
    // EEPROM available
    bool EEPROM;
    // wifi settings
    bool useWifi;
    char SSID[31];
    char PSK[31];
    char ROS_MASTER[31];

    // front left
    int SERVO0_MIN; // shoulder
    int SERVO0_MAX;
    int SERVO0_OFFSET;
    bool SERVO0_INVERT;

    int SERVO1_MIN; // hind limb
    int SERVO1_MAX;
    int SERVO1_OFFSET;
    bool SERVO1_INVERT;

    int SERVO2_MIN; // ellbow
    int SERVO2_MAX;
    int SERVO2_OFFSET;
    bool SERVO2_INVERT;

    // front right
    int SERVO3_MIN; // shoulder
    int SERVO3_MAX;
    int SERVO3_OFFSET;
    bool SERVO3_INVERT;

    int SERVO4_MIN; // hind limb
    int SERVO4_MAX;
    int SERVO4_OFFSET;
    bool SERVO4_INVERT;

    int SERVO5_MIN; // ellbow
    int SERVO5_MAX;
    int SERVO5_OFFSET;
    bool SERVO5_INVERT;

    // rear left
    int SERVO6_MIN; // shoulder
    int SERVO6_MAX;
    int SERVO6_OFFSET;
    bool SERVO6_INVERT;

    int SERVO7_MIN; // hind limb
    int SERVO7_MAX;
    int SERVO7_OFFSET;
    bool SERVO7_INVERT;

    int SERVO8_MIN; // ellbow
    int SERVO8_MAX;
    int SERVO8_OFFSET;
    bool SERVO8_INVERT;

    // rear right
    int SERVO9_MIN; //shoulder
    int SERVO9_MAX;
    int SERVO9_OFFSET;
    bool SERVO9_INVERT;

    int SERVO10_MIN; // hind limb
    int SERVO10_MAX;
    int SERVO10_OFFSET;
    bool SERVO10_INVERT;

    int SERVO11_MIN; // ellbow
    int SERVO11_MAX;
    int SERVO11_OFFSET;
    bool SERVO11_INVERT;

    // others
    int SERVO12_MIN;
    int SERVO12_MAX;
    int SERVO12_OFFSET;
    bool SERVO12_INVERT;
    int SERVO13_MIN;
    int SERVO13_MAX;
    int SERVO13_OFFSET;
    bool SERVO13_INVERT;
    int SERVO14_MIN;
    int SERVO14_MAX;
    int SERVO14_OFFSET;
    bool SERVO14_INVERT;
    int SERVO15_MIN;
    int SERVO15_MAX;
    int SERVO15_OFFSET;
    bool SERVO15_INVERT;

    int SERVO0_HOME; // front left shoulder
    int SERVO1_HOME; // front left hind limb
    int SERVO2_HOME; // front left ellbow

    int SERVO3_HOME; // front right shoulder
    int SERVO4_HOME; // front right hind limb
    int SERVO5_HOME; // front right ellbow

    int SERVO6_HOME; // rear left shoulder
    int SERVO7_HOME; // rear left hind limb
    int SERVO8_HOME; // rear left ellbow

    int SERVO9_HOME;  // rear right shoulder
    int SERVO10_HOME; // rear right hind limb
    int SERVO11_HOME; // rear right ellbow

    int SERVO12_HOME; // others
    int SERVO13_HOME;
    int SERVO14_HOME;
    int SERVO15_HOME;

} configData_t;

extern configData_t config;
extern int configEEPROMStart;

#endif