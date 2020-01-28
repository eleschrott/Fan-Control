# Fan-Control
### Controls by temerature the speed of a fan driven by PWM
***
This small project is intended for cooling situations where the focus is on maximum noise reduction. To achieve this goal, the temperature is measured with a sensor (LM35DT) and processed by a microcontroller. This µC generates a pulse width modulated signal with 32kHz for a fan. The duty cycle of this PWM is directly proportional to the measured temperature.

Only a few parts are needed. The software can be realized with the Arduino IDE. We use here an Atmel ATtiny85, but other types with at least one analog input and a PWM capable output are also suitable.
The program is small enough to work on narrow-breasted microcontrollers. Only an internal clock frequency of 8MHz is necessary to output the PWM signal at 32kHz.
The 32kHz are necessary because some fans tend to produce an unsightly whistle at low frequencies.

The example shown here, refers to an ATtiny85 from Atmel. For other types or manufacturers other fuses may be set. These can be found in the respective documentations.

Circuit diagram and board layout are also included. These files are created with KiCad.
