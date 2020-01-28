/// ***********************
/// Name       :   FanControl.ino
/// Created    :   28.01.2020
/// Version     :   1.0.2020
/// Author      :   eleschrott
/// 
/// Controls the speed of a fan driven by PWM with measured temperature.
/// Emphasis is placed on maximum noise reduction.
/// ***********************

#include "FanControl.h"

/// ********************************************************************************
/// <summary>
///     Reads the temperature and give them back as 16Bit value in Celsius
///     without a decimal dot.
///     e.g. 2354 for 23.54 degrees Celsius
/// </summary>
/// <returns>Temperature in Celsius</returns>
/// ********************************************************************************
uint16_t readTemp(void)
{
    uint16_t temp;

    // Determines the sensor value three times for more accurate results
    temp = (uint16_t)analogRead(TEMP_SENSOR_PIN);
    delay(100);
    temp = temp + (uint16_t)analogRead(TEMP_SENSOR_PIN);
    delay(100);
    temp = temp + (uint16_t)analogRead(TEMP_SENSOR_PIN);

    return (uint16_t)(((temp * (uint64_t)TEMP_CONST_C) / 3) / 10000000);
}

/// ********************************************************************************
/// <summary>
///     Set the Fan speed
/// </summary>
/// <param name="_speed">Speed between 0 - 255</param>
/// ********************************************************************************
void setFanSpeed(uint8_t _speed)
{
    static uint8_t actualFanSpeed = FAN_OFF;

    if (_speed != actualFanSpeed)
    {
        // Workaround for Fan "spinning hole"
        #if defined FAN_SPEED_WORKAROUND && FAN_SPEED_WORKAROUND == 1 
        if ((speed >= FAN_PROBLEM) && (speed < FAN_FIX)) speed = FAN_FIX;
        #endif

        analogWrite((uint8_t)FAN_PIN, (int)_speed);
        actualFanSpeed = _speed;
    }
}

void setup()
{
    SetPWM32kHz(); // Set the PWM frequency to 32kHz

    analogReference(INTERNAL);
    pinMode(FAN_PIN, OUTPUT);

    setFanSpeed((uint8_t)FAN_HIGH); // Switch fan on/off to indicate start up
    delay(1000);
    setFanSpeed((uint8_t)FAN_OFF);
    delay(2500);
    setFanSpeed((uint8_t)FAN_LOW);
    delay(1000);
    setFanSpeed((uint8_t)FAN_OFF);
}

void loop()
{
    uint16_t temperature = readTemp();

    if (temperature > (uint16_t)TEMP_MAX) // Max speed on max. temperature
    {
        setFanSpeed((uint8_t)FAN_HIGH);
    }
    else if (temperature <= (uint16_t)TEMP_MINHYS) // Fan off on low temperature
    {
        setFanSpeed((uint8_t)FAN_OFF);
    }
    else if ((temperature >= (uint16_t)TEMP_MIN) && (temperature <= (uint16_t)TEMP_NORMHYS)) // Low speed on low temperature
    {
       setFanSpeed((uint8_t)FAN_LOWLOW);
    }
    else if ((temperature > (uint16_t)TEMP_NORM) && (temperature <= (uint16_t)TEMP_MID)) // map speed between FAN_LOW and FAN_MID
    {
        setFanSpeed((uint8_t)map((long)temperature, (long)TEMP_NORM, (long)TEMP_MID, (long)FAN_LOW, (long)FAN_MID));
    }
    else if ((temperature > (uint16_t)TEMP_MID) && (temperature <= (uint16_t)TEMP_MAX)) // map speed between FAN_MID an FAN_HIGH
    {
        setFanSpeed((uint8_t)map((long)temperature, (long)TEMP_MID, (long)TEMP_MAX, (long)FAN_MID, (long)FAN_HIGH));
    }
}
