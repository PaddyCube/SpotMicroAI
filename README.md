# SpotMicroAI 
 My Version of SpotMicroAI

# Low Level Firmware
 This package contains a low-level firmware for SpotMicroAI robot and might be useful for other 4-legged robots as well.
 The firmware runs on a Wemos D1 mini pro and should also run on any other ESP8266 device like NodeMCU.
 
 Calculating and processing the pose of all 12 servo joints is a complex task and a lot of work to implement in Arduino.
 But this can be done more easily and fast using ROS (Robot Operating System). So this firmware is designed to receive commands
 from ROS and just executes the synchronuous servo movement.
 
 To establish communication, rosserial is used as well as a rosserial implementation over wifi. The idea behind is, that you can either ROS on 
 RPI (or others) inside the robot and connect it to ESP8266 using serial connection. Or you can run ROS on any PC inside your local network and send
 commands to robot using wifi.

# Current state
## Settings
 The firmware offers some servo-related settings (min, max, initial pose, offset) for each servo
 
## Servo movement
 The firmware is able to drive any of the 16 servos attached to a PCA9685 expansion board using ServoEasing library.
 You can send commands to any servo using serial commands. To do this, connect ESP8266 to your PC, open serial monitor 
 and follow the instructions you see there.
 
## Wifi
 Currently, the firmware connects to wifi but doesn't read any package here 
 
# Next steps
- implement EEPROM to store configuration
- build some serial commands to set/show configuration at EEPROM
- create a ROS node and ROS message to subscribe to a ROS master