#include "HID-Project.h"
#include <CommonBusEncoders.h>

CommonBusEncoders encoders(4, 6, 8, 4);

uint8_t rsteps = 4;
void setup() 
{
  // check solder jumper. 
  
  encoders.setDebounce(16);
  encoders.resetChronoAfter(1000);
  encoders.addEncoder(1, rsteps, 9, 1, 100,  199);
  encoders.addEncoder(2, rsteps, 10, 1, 200, 299);

  encoders.addEncoder(3, rsteps, 11, 1, 300,  399);
  encoders.addEncoder(4, rsteps, 12, 1, 400, 499);


  Serial.begin(9600);
  Serial.println(F("USB Rotary Keyboard v1"));
  Serial.println(F("Created by Jacob Jarick"));
  Consumer.begin();
  Keyboard.begin();
}

void loop() 
{
  int index = encoders.readAll();
  if (index == 0) 
    return;

  Serial.println(index);
  
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
    Consumer.write(MEDIA_FAST_FORWARD);
  else if(index == 301)
    Consumer.write(MEDIA_REWIND);
  else if(index == 399)
    Consumer.write(MEDIA_STOP);

  else if(index == 400)
    Keyboard.write(KEY_RIGHT_ARROW);
  else if(index == 401)
    Keyboard.write(KEY_LEFT_ARROW);
  else if(index == 499)
    Keyboard.write(' ');

}
