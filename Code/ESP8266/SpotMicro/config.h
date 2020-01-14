#ifndef CONFIG_H
#define CONFIG_H

#include <ESP8266WiFi.h>
#include <ros.h>

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
    IPAddress ROS_Master;
    uint16_t ROS_Serial_Port;
    
    // servos
    configServo servos[16];

} configData_t;

extern configData_t config;
extern int configEEPROMStart;

#endif
