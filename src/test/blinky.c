// compile and upload with:
// BRD=x make flash
// where x = 0,1,2
#include <avr/io.h>
#include <util/delay.h>

// ATmega32u4
#if BRD == 2
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
		_delay_ms(100);
		PRT ^= (LED); // invert LED pin
		_delay_ms(900);
	}

	return 0;
}
