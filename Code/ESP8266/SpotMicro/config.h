#ifndef CONFIG_H
#define CONFIG_H

typedef struct
{     
    int SERVO_MIN; 
    int SERVO_MAX;
    int SERVO_OFFSET;
    bool SERVO_INVERT;
    int SERVO_HOME;
} configServo;

typedef struct
{
    // EEPROM available
    bool EEPROM;
    // wifi settings
    bool useWifi;
    char SSID[31];
    char PSK[31];
    char ROS_MASTER[31];

    // servos
    configServo servos[16];

} configData_t;

extern configData_t config;
extern int configEEPROMStart;

#endif