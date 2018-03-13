/*
Status: In Progress.
 Designed by: The Eye
 Programmed by: Jacob Joaquin
 */

import fontastic.*;

FontDisorient2017 df = new FontDisorient2017();
boolean renderFont = true;

void settings() {
  size(900, 650);
  pixelDensity(displayDensity());
}

void setup() {
  if (renderFont) {
    createFont();
  }
  noLoop();
  background(255);
  noStroke();
  fill(0);

  df.setHeight(60);
  df.text("abcdefg", 10, 10);
  df.text("hijklmno", 10, 80);
  df.text("pqrstuv", 10, 150);
  df.text("wxyz", 10, 220);
  df.text("12345678", 10, 290);
  df.text("90`~!@#$%", 10, 360);
  df.text("^&*()_+-=", 10, 430);
  df.text("[{}];':\",.<>/?\\|", 10, 500);
  save("dataFontLatest.png");
}

void draw() {
}