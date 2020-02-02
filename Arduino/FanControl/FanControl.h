/// ***********************
/// Name       :   FanControl.h
/// Created    :   28.01.2020
/// Version    :   1.0.2020
/// Author     :   eleschrott
/// ***********************

#ifndef _FANCONTROL_H
#define _FANCONTROL_H

// Pins used from ATtiny85
constexpr auto FAN_PIN          = PB0;
constexpr auto TEMP_SENSOR_PIN  = PB3;

// Constant to calculate the temperature in degrees Celsius
constexpr auto TEMP_CONST_C = 107421875;

// Temperature values to define the ranges.
// We use no float variables, all temperatures gets calculated in 16Bit uint16_t!
// This means a value of 2350 corresponds to a temperature of 23.50 degrees Celsius
constexpr auto TEMP_MINHYS  = 2350; // Hysteresis for minimum temp to switch off the running fan
constexpr auto TEMP_MIN     = 2500; // Minimum Temp to switch on the fan
constexpr auto TEMP_NORMHYS = 2850; // Hysteresis for temp to switch normal range off
constexpr auto TEMP_NORM    = 3000; // Start of normal range
constexpr auto TEMP_MID     = 5000; // Temp to go to high range
constexpr auto TEMP_MAX     = 7500; // Max temperature

// Fan responsible parameter to run the fan in smooth and low noise as possible
// Adjust this values to your fan model!
constexpr auto FAN_OFF      =   0; //
constexpr auto FAN_LOWLOW   =  63; // Lowest PWM to run the fan save on minimum noise
constexpr auto FAN_LOW      =  75; // Minimum for controlled "normal" run
constexpr auto FAN_MID      = 150; // Maximum for controlled normal run and minimum for high speed run
constexpr auto FAN_HIGH     = 255; // Maximum for controlled high speed

#define FAN_SPEED_WORKAROUND 0

// Parameter for workaround for fan "spinning hole"
// If your fan has problem on special PWM value, where is no start possible, use the parameter FAN_PROBLEM and FAN_FIX
// To switch on, uncomment next line:
// #define FAN_SPEED_WORKAROUND 1

#if defined FAN_SPEED_WORKAROUND && FAN_SPEED_WORKAROUND == 1 
constexpr auto FAN_PROBLEM  = 50; // Problem PWM speed
constexpr auto FAN_FIX      = 63; // PWM value for save start
#endif

uint16_t readTemp(void);
void setFanSpeed(uint8_t speed);

#endif // !_FANCONTROL_H
