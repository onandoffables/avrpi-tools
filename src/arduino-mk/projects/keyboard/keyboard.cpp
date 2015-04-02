#if ARDUINO >= 100
    #include "Arduino.h"
#else
    #include "WProgram.h"
#endif

void setup() {
	pinMode(10, INPUT_PULLUP);
#ifdef USBCON
	// only do this on a AVR with hardware USB
	Keyboard.begin();
#endif
}

void loop() {
	if(digitalRead(10)==LOW) {
#ifdef USBCON
		// only do this on a AVR with hardware USB
		Keyboard.print("Hello!");
#endif
		delay(500);
	}
}
