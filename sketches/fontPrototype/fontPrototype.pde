/*
Status: In Progress.
Designed by: The Eye
Programmed by: Jacob Joaquin
*/

import fontastic.*;

boolean renderFont = true;
Fontastic f;
int version = 0;
int fWidth = 1250;

FontDisorient2017 df = new FontDisorient2017();

void createFont() {
  version++;

  if (f != null) { f.cleanup(); }

  f = new Fontastic(this, "Disorient 2017 " + nf(version,4));

  f.setAuthor("the eye");
  f.setVersion("0.1");
  f.setAdvanceWidth(fWidth);

  Enumeration<Character> keys = df.getKeys();
  while(keys.hasMoreElements()) {
    Character c = keys.nextElement();
    ArrayList<PVector> list = df.getPoints(c);

    FGlyph glyph = f.addGlyph(c);

    for (PVector p : list) {
      float w = df.getCharWidth(c);
      float s = (float) fWidth / 10.0;

      glyph.setAdvanceWidth((int) (fWidth * w / 10.0 + fWidth * 0.1));

      PVector[] points = new PVector[4];
      float y = 7 - p.y;
      points[0] = new PVector(p.x * s, y * s);
      points[1] = new PVector(p.x * s + s, y * s);
      points[2] = new PVector(p.x * s + s, y * s + s);
      points[3] = new PVector(p.x * s, y * s + s);
      glyph.addContour(points);
    }

  }
  f.buildFont();
  f.cleanup();
}

void settings() {
  size(880, 650);
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
  df.text("abcdefghi", 10, 10);
  df.text("jklmnopqr", 10, 80);
  df.text("stuvwxyz", 10, 150);
  df.text("ABCDEFGHI", 10, 220);
  df.text("JKLMNOPQR", 10, 290);
  df.text("STUVWXYZ", 10, 360);
  df.text("1234567890", 10, 430);
  df.text("~`!@#$%^&*()_", 10, 500);
  df.text("-+=[{}]\\:;'\"<>?,./", 10, 570);

  save("dataFontLatest.png");
}

void draw() {
}
