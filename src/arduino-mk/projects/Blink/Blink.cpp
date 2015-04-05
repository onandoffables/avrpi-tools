#include <Arduino.h>

int led = 13;

void setup() {
  pinMode(led, OUTPUT);      // ledpin is an output.
}

void loop() {
  digitalWrite(led, HIGH);   // set the LED on
  delay(1000);               // wait for a second
  digitalWrite(led, LOW);    // set the LED off
  delay(1000);               // wait for a second
}
