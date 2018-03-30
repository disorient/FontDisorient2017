/*
This is intended to generate the Arduino C data.
 
 Status: In Progress.
 Designed by: The Eye
 Programmed by: Jacob Joaquin
 */

import fontastic.*;

FontDisorient2017 df = new FontDisorient2017();
boolean renderFont = false;

void settings() {
  size(900, 650);
  pixelDensity(displayDensity());
}

void setup() {
  noLoop();
}

void draw() {  
  ArrayList<String> data = new ArrayList<String>();
  //for (int i = 0; i < 128; i++) {
  //  String s = Character.toString((char) i);
  //  data.add(s);
  //}

  // Create header
  data.add("const uint16_t disorientFont2017[128][8] = {");

  for (int i = 0; i < 128; i++) {
    Char c = Character.toString((char) i);
    data.add(s);
  }

  //{
  //  0b0111110000000000,
  //  0b1111111000000000,
  //  0b1100011000000000,
  //  0b1100011000000000,
  //  0b1100011000000000,
  //  0b1100011000000000,
  //  0b1111111000000000,
  //  0b0111110000000000,
  //}

  data.add("};");


  // Create String primitive Array
  String[] output = new String[data.size()];
  output = data.toArray(output);

  // Save file and exit
  saveStrings("test.txt", output);
  exit();
}
