/*
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
  if (renderFont) {
    // createFont();
    createFontDots();
    // createFontTearDrop();
  }
  noLoop();
  background(255);
  noStroke();
  fill(0);

  df.setHeight(60);
  df.text("abcdefghi", 10, 10);
  df.text("jklmnopqr", 10, 80);
  df.text("stuvwxyz", 10, 150);
  df.text("ABCDEFGHI", 10, 220);
  df.text("JKLMNOPQR", 10, 290);
  df.text("STUVWXYZ", 10, 360);
  df.text("1234567890", 10, 430);
  df.text("~`!@#$%^&*()_", 10, 500);
  df.text("-+=[{}]|\\:;'\"<>?,./", 10, 570);

  save("dataFontLatest.png");
}

void draw() {
}