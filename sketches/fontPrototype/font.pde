Fontastic f;

void createFont() {
  int fWidth = 1250;
  int version = 2;

  if (f != null) {
    f.cleanup();
  }

  f = new Fontastic(this, "Disorient 2017 " + nf(version, 4));

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
