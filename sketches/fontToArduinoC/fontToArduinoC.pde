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

  // Create font width array

  // Create font array
  data.add("const uint16_t disorientFont2017[128][8] = {");

  for (int i = 0; i < 128; i++) {
    char c = (char) i;
    data.add("  {");

    // In font set
    if (df.isDefined(c)) {
      DataFont letter = df.getDataFont(c);
      int w = letter.getWidth();
      
      for (int y = 0; y < 8; y++) {
        String s = "    0b";
        
        // Convert datafont to zeros and ones
        for (int x = 0; x < w; x++) {
          char n = letter.get(x, y) ? '1' : '0';
          s += n;
        }
        
        // Zero pad
        for (int z = 0; z < 16 - w; z++) {
          s += "0";
        }
        
        s += ",";
        data.add(s);
      }
    }
    // Not in font set
    else {
      for (int j = 0; j < 8; j++) {
        data.add("    0,");
      }
    }
    data.add("  },");
    //data.add(s);
  }
  data.add("};");


  // Create String primitive Array
  String[] output = new String[data.size()];
  output = data.toArray(output);

  // Save file and exit
  saveStrings("test.txt", output);
  exit();
}
