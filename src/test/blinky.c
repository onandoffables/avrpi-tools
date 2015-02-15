// compile and upload with:
// BRD=1 make flash
// or
// BRD=2 make flash
#include <avr/io.h>
#include <util/delay.h>

// ATmega328p
#if BRD == 1
	#define LED    (1 << 5)
	#define DIR    DDRB
	#define PRT    PORTB
#endif
// ATmega32u4
#if BRD == 2
	#define LED    (1 << 7)
	#define DIR    DDRC
	#define PRT    PORTC
#endif

int main(void)
{
	DIR |= LED; // LED pin is output
	PRT &= ~(LED); // LED is off

	for (;;) {
		PRT ^= (LED); // invert LED pin
		_delay_ms(100);
		PRT ^= (LED); // invert LED pin
		_delay_ms(900);
	}

	return 0;
}
