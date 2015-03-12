// compile and upload with (for example):
// FAM=4 F_CPU=8000000 MCU=atmega32u4 make flash
#include <avr/io.h>
#include <util/delay.h>

// ATmega32u4
#if FAM == 4
	#define LED    (1 << 7)
	#define DIR    DDRC
	#define PRT    PORTC
#else
// ATmega168p + ATmega328p
	#define LED    (1 << 5)
	#define DIR    DDRB
	#define PRT    PORTB
#endif

int main(void)
{
	DIR |= LED; // LED pin is output
	PRT &= ~(LED); // LED is off

	for (;;) {
		PRT ^= (LED); // invert LED pin
		_delay_ms(500);
		PRT ^= (LED); // invert LED pin
		_delay_ms(500);
	}

	return 0;
}
