Fontastic f;
String fontAuthor = "The Eye";
String fontVersion = "20180311";

void createFont() {
  int fWidth = 1250;

  if (f != null) {
    f.cleanup();
  }

  f = new Fontastic(this, "Disorient Bedouin Tech 2017");
  f.setAuthor(fontAuthor);
  f.setVersion(fontVersion);
  f.setAdvanceWidth(fWidth);

  Enumeration<Character> keys = df.getKeys();
  while (keys.hasMoreElements()) {
    Character c = keys.nextElement();
    ArrayList<PVector> list = df.getPoints(c);

    FGlyph glyph = f.addGlyph(c);
    float w = df.getCharWidth(c);
    float s = (float) fWidth / 10.0;
    glyph.setAdvanceWidth((int) (fWidth * w / 10.0 + fWidth * 0.1));

    for (PVector p : list) {
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

void createFontDots() {
  int fWidth = 1250;
  int version = 2;

  if (f != null) {
    f.cleanup();
  }

  f = new Fontastic(this, "Disorient 2017 Dots");

  f.setAuthor(fontAuthor);
  f.setVersion(fontVersion);
  f.setAdvanceWidth(fWidth);

  float s = (float) fWidth / 10.0;

  Enumeration<Character> keys = df.getKeys();
  while (keys.hasMoreElements()) {
    Character c = keys.nextElement();
    ArrayList<PVector> list = df.getPoints(c);
    FGlyph glyph = f.addGlyph(c);

    float w = df.getCharWidth(c);
    glyph.setAdvanceWidth((int) (fWidth * w / 10.0 + fWidth * 0.1));

    int nPoints = 8;
    float radius = s * 0.5;
    float controlLength = (4.0 / 3.0) * tan(PI / (2.0 * (float) nPoints)) * radius;

    for (PVector p : list) {
      FPoint[] points = new FPoint[nPoints];
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

void createFontTearDrop() {
  int fWidth = 1250;
  int version = 2;

  if (f != null) {
    f.cleanup();
  }

  f = new Fontastic(this, "Disorient 2017 TearDrop");
  f.setAuthor(fontAuthor);
  f.setVersion(fontVersion);
  f.setAdvanceWidth(fWidth);

  float s = (float) fWidth / 10.0;

  Enumeration<Character> keys = df.getKeys();
  while (keys.hasMoreElements()) {
    Character c = keys.nextElement();
    ArrayList<PVector> list = df.getPoints(c);
    FGlyph glyph = f.addGlyph(c);

    float w = df.getCharWidth(c);
    glyph.setAdvanceWidth((int) (fWidth * w / 10.0 + fWidth * 0.1));

    int nPoints = 8;
    float radius = s * 0.5;
    float controlLength = (4.0 / 3.0) * tan(PI / (2.0 * (float) nPoints)) * radius;

    for (PVector p : list) {
      FPoint[] points = new FPoint[nPoints];
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

      PVector[] points2 = new PVector[4];
      y = 7 - p.y;
      x = p.x * s;
      y = y * s + s * 0.5;
      points2[0] = new PVector(x, y);
      points2[1] = new PVector(x + s * 0.5, y);
      points2[2] = new PVector(x + s * 0.5, y + s * 0.5);
      points2[3] = new PVector(x, y + s * 0.5);
      glyph.addContour(points2);
    }
  }
  f.buildFont();
  f.cleanup();
}