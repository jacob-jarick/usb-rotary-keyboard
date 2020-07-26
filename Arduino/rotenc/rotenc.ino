#include "HID-Project.h"

#include <CommonBusEncoders.h>

CommonBusEncoders encoders(4, 6, 8, 4);

void setup() {
  encoders.setDebounce(16);
  encoders.resetChronoAfter(1000);
  encoders.addEncoder(1, 4, 9, 1, 100,  199);
  encoders.addEncoder(2, 4, 10, 1, 200, 299);

  encoders.addEncoder(3, 4, 11, 1, 300,  399);
  encoders.addEncoder(4, 4, 12, 1, 400, 499);


  Serial.begin(9600);
  Serial.println(F("USB Rotary Keyboard v1"));
  Serial.println(F("Created by Jacob Jarick"));
  Consumer.begin();
  Keyboard.begin();
}

void loop() {
  int index = encoders.readAll();
  if (index != 0) Serial.println(index);

  if(index == 100)
    Consumer.write(MEDIA_VOLUME_UP);
  else if(index == 101)
    Consumer.write(MEDIA_VOLUME_DOWN);
  else if(index == 199)
    Consumer.write(MEDIA_VOLUME_MUTE);
  else if(index == 200)
    Consumer.write(MEDIA_NEXT);
  else if(index == 201)
    Consumer.write(MEDIA_PREVIOUS);
  else if(index == 299)
    Consumer.write(MEDIA_PLAY_PAUSE);
    
  else if(index == 300)
    Keyboard.write(KEY_F13);
  else if(index == 301)
    Keyboard.write(KEY_F14);
  else if(index == 399)
    Keyboard.write(KEY_F15);

  else if(index == 400)
    Keyboard.write(KEY_F16);
  else if(index == 401)
    Keyboard.write(KEY_F17);
  else if(index == 499)
    Keyboard.write(KEY_F18);

}
