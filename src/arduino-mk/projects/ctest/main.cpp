#include <Arduino.h>
#include "test.h"

void setup()  { 
  pinMode(13, OUTPUT);
} 

void loop() {
	int d = test();
	digitalWrite(13, HIGH);
	delay(d);
	digitalWrite(13, LOW);
	delay(d);
}
