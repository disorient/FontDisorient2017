Fontastic f;

void createFont() {
  int fWidth = 1250;
  int version = 3;

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

void createFontCircles() {
  int fWidth = 1250;
  int version = 2;

  if (f != null) {
    f.cleanup();
  }

  f = new Fontastic(this, "Disorient 2017 Dots " + nf(version, 4));

  f.setAuthor("The Eye");
  f.setVersion("0.1");
  f.setAdvanceWidth(fWidth);

  float s = (float) fWidth / 10.0;

  Enumeration<Character> keys = df.getKeys();
  while(keys.hasMoreElements()) {
    Character c = keys.nextElement();
    ArrayList<PVector> list = df.getPoints(c);
    FGlyph glyph = f.addGlyph(c);

    float w = df.getCharWidth(c);
    glyph.setAdvanceWidth((int) (fWidth * w / 10.0 + fWidth * 0.1));

    for (PVector p : list) {
      int nPoints = 8;
      FPoint[] points = new FPoint[nPoints];
      float radius = s * 0.5;
      float controlLength = (4.0 / 3.0) * tan(PI / (2.0 * (float) nPoints)) * radius;
      float x = p.x;
      float y = 7 - p.y;  // Invert Y
      x *= s;
      y *= s;
      x += s * 0.5;
      y += s * 0.5;

      for (int i = 0; i < nPoints; i++) {
        float n = (float) i / (float) nPoints;
        float a = n * TAU;

        PVector point = PVector.fromAngle(a).mult(radius).add(x, y);
        PVector cPoint1 = PVector.fromAngle(a - HALF_PI).mult(controlLength);
        cPoint1 = point.copy().add(cPoint1);
        PVector cPoint2 = PVector.fromAngle(a + HALF_PI).mult(controlLength);
        cPoint2 = point.copy().add(cPoint2);

        FPoint fp = new FPoint(point, cPoint1, cPoint2);
        points[i] = fp;
      }

      glyph.addContour(points);
    }
  }
  f.buildFont();
  f.cleanup();
}
