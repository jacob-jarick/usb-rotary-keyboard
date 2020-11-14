/*  Version 1
    4x Rotary Encoder USB keyboard
    Board target: Arduino Micro Pro
    Written by Jacob Jarick
    mem.namefix@gmail.com
   https://github.com/jacob-jarick/usb-rotary-keyboard

   board: sparkfun pro micro
   5v 16Mhz
   board arduino git repo:
   https://raw.githubusercontent.com/sparkfun/Arduino_Boards/master/IDE_Board_Manager/package_sparkfun_index.json

*/

#include "HID-Project.h"
#include <CommonBusEncoders.h>
CommonBusEncoders encoders(4, 6, 8, 4);

// https://forum.arduino.cc/index.php?topic=324554.0

#define KEY_F13  0xF0 // 0x68 + 0x88
#define KEY_F14 0xF1 // 0x69 + 0x88
#define KEY_F15 0xF2 // 0x6A + 0x88
#define KEY_F16 0xF3 // 0x6B + 0x88
#define KEY_F17 0xF4 // 0x6C + 0x88
#define KEY_F18 0xF5 // 0x6D + 0x88

const uint8_t keya = 19;
const uint8_t keyb = 7;
const uint8_t keyc = 22;
const uint8_t keyd = 5;

const uint8_t dip1 = 23; // rflip (now paste special) - triggers keyC
const uint8_t dip2 = 21; // mouse
const uint8_t dip3 = 20; // inc4

const uint8_t key_debounce = 150;

unsigned long keysleep[4] = {0, 0, 0, 0};

// set to match your encoders.
uint8_t rsteps = 2;

// these bools will be set via jumpers
//bool alt_steps = 1; // 0 = 2 steps, 1 = 4 steps
bool rmouse = 0; // worlds most awkward mouse - etch a sketch style

// internal bools

bool mousepress = 0;

void setup()
{
  pinMode(keya, INPUT);
  pinMode(keyb, INPUT);
  pinMode(keyc, INPUT);
  pinMode(keyd, INPUT);

  pinMode(dip1, INPUT);
  pinMode(dip2, INPUT);
  pinMode(dip3, INPUT);

  encoders.setDebounce(16);
  encoders.resetChronoAfter(1000);

  if (digitalRead(dip3))
    rsteps = 4;

  encoders.addEncoder(1, rsteps, 12, 1, 100,  199);
  encoders.addEncoder(2, rsteps, 11, 1, 200, 299);
  encoders.addEncoder(3, rsteps, 10, 1, 300,  399);
  encoders.addEncoder(4, rsteps, 9, 1, 400, 499);


  Consumer.begin();
  Keyboard.begin();
  Mouse.begin();

  Serial.begin(9600);
  Serial.println(F("USB Rotary Keyboard v1"));
  Serial.println(F("Created by Jacob Jarick"));
}

void loop()
{
  rmouse = digitalRead(dip2);
  uint8_t alt_keymap = digitalRead(dip1);

  // read keys
  if (keysleep[0] < millis() && !digitalRead(keya))
  {
    keysleep[0] = millis() + key_debounce;

    if (alt_keymap)
    {
      Serial.println("A - Copy");
      Keyboard.press(KEY_LEFT_CTRL);
      Keyboard.press('c');
      Keyboard.releaseAll();
    }
    else
    {
      Serial.println("F13");
      Keyboard.write(KEY_F13);
    }
  }
  if (keysleep[1] < millis() && !digitalRead(keyb))
  {
    keysleep[1] = millis() + key_debounce;

    if (alt_keymap)
    {
      Serial.println("B - Cut");
      Keyboard.press(KEY_LEFT_CTRL);
      Keyboard.press('x');
      Keyboard.releaseAll();
    }
    else
    {
      Serial.println("F14");
      Keyboard.write(KEY_F14);
    }
  }
  if (keysleep[2] < millis() && !digitalRead(keyc))
  {
    keysleep[2] = millis() + key_debounce;

    if (alt_keymap)
    {
      Serial.println("C - Paste");
      Keyboard.press(KEY_LEFT_CTRL);
      Keyboard.press('v');
      Keyboard.releaseAll();
    }
    else
    {
      Serial.println("F15");
      Keyboard.write(KEY_F15);
    }
  }
  if (keysleep[3] < millis() && !digitalRead(keyd))
  {
    keysleep[3] = millis() + key_debounce;

    if (alt_keymap)
    {
      Serial.println("D - Paste Special");

      Keyboard.write(KEY_HOME);

      Keyboard.press(KEY_LEFT_SHIFT);
      Keyboard.press(KEY_END);
      Keyboard.releaseAll();

      Keyboard.write(KEY_DELETE);

      Keyboard.press(KEY_LEFT_CTRL);
      Keyboard.press('v');
      Keyboard.releaseAll();
    }
    else
    {
      Serial.println("F16");
      Keyboard.write(KEY_F16);
    }
  }


  int index = encoders.readAll();
  if (index == 0)
    return;

  Serial.println(index);



  //ROT 1
  if (index == 101)
  {
    if (rmouse)
      Mouse.move(5, 0, 0);
    else
      Consumer.write(MEDIA_VOLUME_UP);
  }
  else if (index == 100)
  {
    if (rmouse)
      Mouse.move(-5, 0, 0);
    else
      Consumer.write(MEDIA_VOLUME_DOWN);
  }
  else if (index == 199)
  {
    if (rmouse)
      mousetoggle();
    else
      Consumer.write(MEDIA_VOLUME_MUTE);
  }

  // ROI 2
  else if (index == 201)
  {
    if (rmouse)
      Mouse.move(0, 5, 0);
    else
      Consumer.write(MEDIA_NEXT);
  }
  else if (index == 200)
  {
    if (rmouse)
      Mouse.move(0, -5, 0);
    else
      Consumer.write(MEDIA_PREVIOUS);
  }
  else if (index == 299)
  {
    if (rmouse)
    {
      Mouse.release();
      Mouse.click();
    }
    else
      Consumer.write(MEDIA_PLAY_PAUSE);
  }

  // ROT 3
  else if (index == 301)
  {
    if (rmouse)
      Mouse.move(5, 5, 0);
    else

      Consumer.write(MEDIA_FAST_FORWARD);
  }
  else if (index == 300)
  {
    if (rmouse)
      Mouse.move(-5, -5, 0);
    else
      Consumer.write(MEDIA_REWIND);
  }
  else if (index == 399)
  {
    if (rmouse)
    {
      Mouse.release();
      Mouse.click(MOUSE_RIGHT);
    }
    else
      Consumer.write(MEDIA_STOP);
  }

  else if (index == 401)
  {
    if (rmouse)
      Mouse.move(-5, 5, 0);
    else
      Keyboard.write(KEY_RIGHT_ARROW);
  }
  else if (index == 400)
  {
    if (rmouse)
      Mouse.move(5, -5, 0);
    else
      Keyboard.write(KEY_LEFT_ARROW);
  }
  else if (index == 499)
  {
    if (rmouse)
    {
      Mouse.release();
      Mouse.click(MOUSE_MIDDLE);
    }
    else
      Keyboard.write(' ');
  }
}

void mousetoggle()
{
  mousepress = !mousepress;

  if (mousepress)
    Mouse.press();
  else
    Mouse.release();
}
