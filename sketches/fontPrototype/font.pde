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

void createFontCircles() {
  int fWidth = 1250;
  int version = 2;

  if (f != null) {
    f.cleanup();
  }

  f = new Fontastic(this, "Disorient 2017 Circles " + nf(version, 4));

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

      FPoint[] points = new FPoint[4];
      float s2 = s / 2.0 * 0.49;
      float s3 = s2 * 0.552284749831;
      float x = p.x;
      float y = 7 - p.y;
      x *= s - s * 0.5;
      y *= s - s * 0.5;

      s3 *= -1;

      points[0] = new FPoint(x + s2, y + 0);
      points[0].setControlPoint1(x + s2, y + -s3);
      points[0].setControlPoint2(x + s2, y + s3);

      points[1] = new FPoint(x + 0, y + -s2);
      points[1].setControlPoint1(x + -s3, y + -s2);
      points[1].setControlPoint2(x + s3, y + -s2);

      points[2] = new FPoint(x + -s2, y + 0);
      points[2].setControlPoint1(x + -s2, y + s3);
      points[2].setControlPoint2(x + -s2, y + -s3);

      points[3] = new FPoint(x + 0, y + s2);
      points[3].setControlPoint1(x + s3, y + s2);
      points[3].setControlPoint2(x + -s3, y + s2);

      // points[4] = new FPoint(x + s2, y + 0);
      // points[4].setControlPoint1(x + s2, y + -s3);
      // points[4].setControlPoint2(x + s2, y + s3);

      glyph.addContour(points);

      // f.addGlyph(c).addContour(points);

      // int nPoints = 64;
      // PVector[] points = new PVector[nPoints];
      //
      // for (int i = 0; i < nPoints; i++) {
      //   float x = p.x * s;
      //   x += s * 0.5;
      //   float y = 7 - p.y;
      //   y = y * s + s * 0.5;
      //
      //   float n = (float) i / (float) nPoints;
      //   float a = n * TAU;
      //   PVector p2 = PVector.fromAngle(a).mult(s * 0.5).add(x, y);
      //   points[i] = p2;
      // }
      // glyph.addContour(points);
    }
  }
  f.buildFont();
  f.cleanup();
}
