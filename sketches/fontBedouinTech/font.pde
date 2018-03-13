Fontastic f;
String fontAuthor = "The Eye and Nazeeb Nahas";
String fontVersion = "20180313";

void createFont() {
  int fWidth = 1250;
  int version = 2;

  if (f != null) {
    f.cleanup();
  }

  f = new Fontastic(this, "Disorient 2017 Bedouin Tech");
  f.setAuthor(fontAuthor);
  f.setVersion(fontVersion);
  f.setAdvanceWidth(fWidth);

  float s = (float) fWidth / 10.0;
  float radiusMult = 0.425;
  float radius = s * radiusMult;
  int nPoints = 8;
  float controlLength = (4.0 / 3.0) * tan(PI / (2.0 * (float) nPoints)) * radius;

  Enumeration<Character> keys = df.getKeys();
  while (keys.hasMoreElements()) {
    Character c = keys.nextElement();
    ArrayList<ShapeType> list = df.getShapes(c);
    FGlyph glyph = f.addGlyph(c);

    float w = df.getCharWidth(c);
    glyph.setAdvanceWidth((int) (fWidth * w / 10.0 + fWidth * 0.1));


    for (ShapeType p : list) {
      if (p.type == '0') {
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
      } else if (p.type == '1') {
        FPoint[] points = new FPoint[nPoints + 2];
        float x = p.x;
        float y = 7 - p.y;  // Invert Y
        x *= s;
        y *= s;
        x += s * 0.5;
        y += s * 0.5;

        for (int i = 0; i < nPoints / 2 + 1; i++) {
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

        for (int i = 0; i < nPoints / 2 + 1; i++) {
          float n = (float) i / (float) nPoints;
          float a = n * TAU + PI;

          PVector point = PVector.fromAngle(a).mult(radius).add(x, y - s);
          PVector cPoint1 = PVector.fromAngle(a - HALF_PI).mult(controlLength);
          cPoint1 = point.copy().add(cPoint1);
          PVector cPoint2 = PVector.fromAngle(a + HALF_PI).mult(controlLength);
          cPoint2 = point.copy().add(cPoint2);

          FPoint fp = new FPoint(point, cPoint1, cPoint2);
          points[i + nPoints / 2 + 1] = fp;
        }

        glyph.addContour(points);
      } else if (p.type == '2') {
        FPoint[] points = new FPoint[nPoints + 2];
        float x = p.x;
        float y = 7 - p.y;  // Invert Y
        x *= s;
        y *= s;
        x += s * 0.5;
        y += s * 0.5;

        for (int i = 0; i < nPoints / 2 + 1; i++) {
          float n = (float) i / (float) nPoints;
          float a = n * TAU + HALF_PI;

          PVector point = PVector.fromAngle(a).mult(radius).add(x, y);
          PVector cPoint1 = PVector.fromAngle(a - HALF_PI).mult(controlLength);
          cPoint1 = point.copy().add(cPoint1);
          PVector cPoint2 = PVector.fromAngle(a + HALF_PI).mult(controlLength);
          cPoint2 = point.copy().add(cPoint2);

          FPoint fp = new FPoint(point, cPoint1, cPoint2);
          points[i] = fp;
        }

        for (int i = 0; i < nPoints / 2 + 1; i++) {
          float n = (float) i / (float) nPoints;
          float a = n * TAU + PI + HALF_PI;

          PVector point = PVector.fromAngle(a).mult(radius).add(x + s, y);
          PVector cPoint1 = PVector.fromAngle(a - HALF_PI).mult(controlLength);
          cPoint1 = point.copy().add(cPoint1);
          PVector cPoint2 = PVector.fromAngle(a + HALF_PI).mult(controlLength);
          cPoint2 = point.copy().add(cPoint2);

          FPoint fp = new FPoint(point, cPoint1, cPoint2);
          points[i + nPoints / 2 + 1] = fp;
        }

        glyph.addContour(points);
      } else if (p.type == '3') {
        ArrayList<FPoint> fPointList = new ArrayList<FPoint>(); 
        FPoint[] points;
        float x = p.x;
        float y = 7 - p.y;  // Invert Y
        x *= s;
        y *= s;
        x += s * 0.5;
        y += s * 0.5;

        for (int i = 0; i < nPoints / 2 + 1; i++) {
          float n = (float) i / (float) nPoints;
          float a = n * TAU;

          PVector point = PVector.fromAngle(a).mult(radius).add(x, y);
          PVector cPoint1 = PVector.fromAngle(a - HALF_PI).mult(controlLength);
          cPoint1 = point.copy().add(cPoint1);
          PVector cPoint2 = PVector.fromAngle(a + HALF_PI).mult(controlLength);
          cPoint2 = point.copy().add(cPoint2);

          FPoint fp = new FPoint(point, cPoint1, cPoint2);
          fPointList.add(fp);
        }

        for (int i = 0; i < nPoints / 4 + 1; i++) {
          float n = (float) i / (float) nPoints;
          float a = n * TAU + PI;

          PVector point = PVector.fromAngle(a).mult(radius).add(x, y - s);
          PVector cPoint1 = PVector.fromAngle(a - HALF_PI).mult(controlLength);
          cPoint1 = point.copy().add(cPoint1);
          PVector cPoint2 = PVector.fromAngle(a + HALF_PI).mult(controlLength);
          cPoint2 = point.copy().add(cPoint2);

          FPoint fp = new FPoint(point, cPoint1, cPoint2);
          fPointList.add(fp);
        }

        for (int i = 0; i < nPoints / 2 + 1; i++) {
          float n = (float) i / (float) nPoints;
          float a = n * TAU + 3 * HALF_PI;

          PVector point = PVector.fromAngle(a).mult(radius).add(x + s, y - s);
          PVector cPoint1 = PVector.fromAngle(a - HALF_PI).mult(controlLength);
          cPoint1 = point.copy().add(cPoint1);
          PVector cPoint2 = PVector.fromAngle(a + HALF_PI).mult(controlLength);
          cPoint2 = point.copy().add(cPoint2);

          FPoint fp = new FPoint(point, cPoint1, cPoint2);
          fPointList.add(fp);
        }

        // Corner
        float a = QUARTER_PI;
        PVector point = new PVector(x + radius, y - s + radius);
        FPoint fp = new FPoint(point);
        fPointList.add(fp);

        // Convert to FPoint primitive array
        points = new FPoint[fPointList.size()];
        for (int i = 0; i < fPointList.size(); i++) {
          points[i] = fPointList.get(i);
        }
        glyph.addContour(points);
      } else if (p.type == '5') {
        ArrayList<FPoint> fPointList = new ArrayList<FPoint>(); 
        FPoint[] points;
        float x = p.x;
        float y = 7 - p.y;  // Invert Y
        x *= s;
        y *= s;
        x += s * 0.5;
        y += s * 0.5;

        for (int i = 0; i < nPoints / 4 + 1; i++) {
          float n = (float) i / (float) nPoints;
          float a = n * TAU + HALF_PI;

          PVector point = PVector.fromAngle(a).mult(radius).add(x, y);
          PVector cPoint1 = PVector.fromAngle(a - HALF_PI).mult(controlLength);
          cPoint1 = point.copy().add(cPoint1);
          PVector cPoint2 = PVector.fromAngle(a + HALF_PI).mult(controlLength);
          cPoint2 = point.copy().add(cPoint2);

          FPoint fp = new FPoint(point, cPoint1, cPoint2);
          fPointList.add(fp);
        }

        for (int i = 0; i < nPoints / 2 + 1; i++) {
          float n = (float) i / (float) nPoints;
          float a = n * TAU + PI;

          PVector point = PVector.fromAngle(a).mult(radius).add(x, y - s);
          PVector cPoint1 = PVector.fromAngle(a - HALF_PI).mult(controlLength);
          cPoint1 = point.copy().add(cPoint1);
          PVector cPoint2 = PVector.fromAngle(a + HALF_PI).mult(controlLength);
          cPoint2 = point.copy().add(cPoint2);

          FPoint fp = new FPoint(point, cPoint1, cPoint2);
          fPointList.add(fp);
        }

        {
          // Corner
          PVector point = new PVector(x + radius, y - radius);
          FPoint fp = new FPoint(point);
          fPointList.add(fp);
        }

        for (int i = 0; i < nPoints / 2 + 1; i++) {
          float n = (float) i / (float) nPoints;
          float a = n * TAU + 3 * HALF_PI;

          PVector point = PVector.fromAngle(a).mult(radius).add(x + s, y);
          PVector cPoint1 = PVector.fromAngle(a - HALF_PI).mult(controlLength);
          cPoint1 = point.copy().add(cPoint1);
          PVector cPoint2 = PVector.fromAngle(a + HALF_PI).mult(controlLength);
          cPoint2 = point.copy().add(cPoint2);

          FPoint fp = new FPoint(point, cPoint1, cPoint2);
          fPointList.add(fp);
        }

        // Convert to FPoint primitive array
        points = new FPoint[fPointList.size()];
        for (int i = 0; i < fPointList.size(); i++) {
          points[i] = fPointList.get(i);
        }
        glyph.addContour(points);
      } else if (p.type == '4') {
        ArrayList<FPoint> fPointList = new ArrayList<FPoint>(); 
        FPoint[] points;
        float x = p.x;
        float y = 7 - p.y;  // Invert Y
        x *= s;
        y *= s;
        x += s * 0.5;
        y += s * 0.5;

        for (int i = 0; i < nPoints / 2 + 1; i++) {
          float n = (float) i / (float) nPoints;
          float a = n * TAU;

          PVector point = PVector.fromAngle(a).mult(radius).add(x, y);
          PVector cPoint1 = PVector.fromAngle(a - HALF_PI).mult(controlLength);
          cPoint1 = point.copy().add(cPoint1);
          PVector cPoint2 = PVector.fromAngle(a + HALF_PI).mult(controlLength);
          cPoint2 = point.copy().add(cPoint2);

          FPoint fp = new FPoint(point, cPoint1, cPoint2);
          fPointList.add(fp);
        }

        {
          // Corner
          PVector point = new PVector(x - radius, y - s + radius);
          FPoint fp = new FPoint(point);
          fPointList.add(fp);
        }

        for (int i = 0; i < nPoints / 2 + 1; i++) {
          float n = (float) i / (float) nPoints;
          float a = n * TAU + HALF_PI;

          PVector point = PVector.fromAngle(a).mult(radius).add(x - s, y - s);
          PVector cPoint1 = PVector.fromAngle(a - HALF_PI).mult(controlLength);
          cPoint1 = point.copy().add(cPoint1);
          PVector cPoint2 = PVector.fromAngle(a + HALF_PI).mult(controlLength);
          cPoint2 = point.copy().add(cPoint2);

          FPoint fp = new FPoint(point, cPoint1, cPoint2);
          fPointList.add(fp);
        }

        for (int i = 0; i < nPoints / 4 + 1; i++) {
          float n = (float) i / (float) nPoints;
          float a = n * TAU + 3 * HALF_PI;

          PVector point = PVector.fromAngle(a).mult(radius).add(x, y - s);
          PVector cPoint1 = PVector.fromAngle(a - HALF_PI).mult(controlLength);
          cPoint1 = point.copy().add(cPoint1);
          PVector cPoint2 = PVector.fromAngle(a + HALF_PI).mult(controlLength);
          cPoint2 = point.copy().add(cPoint2);

          FPoint fp = new FPoint(point, cPoint1, cPoint2);
          fPointList.add(fp);
        }

        // Convert to FPoint primitive array
        points = new FPoint[fPointList.size()];
        for (int i = 0; i < fPointList.size(); i++) {
          points[i] = fPointList.get(i);
        }
        glyph.addContour(points);
      } else if (p.type == '6') {
        ArrayList<FPoint> fPointList = new ArrayList<FPoint>(); 
        FPoint[] points;
        float x = p.x;
        float y = 7 - p.y;  // Invert Y
        x *= s;
        y *= s;
        x += s * 0.5;
        y += s * 0.5;

        for (int i = 0; i < nPoints / 2 + 1; i++) {
          float n = (float) i / (float) nPoints;
          float a = n * TAU + HALF_PI;

          PVector point = PVector.fromAngle(a).mult(radius).add(x, y);
          PVector cPoint1 = PVector.fromAngle(a - HALF_PI).mult(controlLength);
          cPoint1 = point.copy().add(cPoint1);
          PVector cPoint2 = PVector.fromAngle(a + HALF_PI).mult(controlLength);
          cPoint2 = point.copy().add(cPoint2);

          FPoint fp = new FPoint(point, cPoint1, cPoint2);
          fPointList.add(fp);
        }

        {
          // Corner
          PVector point = new PVector(x + s - radius, y - radius);
          FPoint fp = new FPoint(point);
          fPointList.add(fp);
        }

        for (int i = 0; i < nPoints / 2 + 1; i++) {
          float n = (float) i / (float) nPoints;
          float a = n * TAU + PI;

          PVector point = PVector.fromAngle(a).mult(radius).add(x + s, y - s);
          PVector cPoint1 = PVector.fromAngle(a - HALF_PI).mult(controlLength);
          cPoint1 = point.copy().add(cPoint1);
          PVector cPoint2 = PVector.fromAngle(a + HALF_PI).mult(controlLength);
          cPoint2 = point.copy().add(cPoint2);

          FPoint fp = new FPoint(point, cPoint1, cPoint2);
          fPointList.add(fp);
        }

        for (int i = 0; i < nPoints / 4 + 1; i++) {
          float n = (float) i / (float) nPoints;
          float a = n * TAU;

          PVector point = PVector.fromAngle(a).mult(radius).add(x + s, y);
          PVector cPoint1 = PVector.fromAngle(a - HALF_PI).mult(controlLength);
          cPoint1 = point.copy().add(cPoint1);
          PVector cPoint2 = PVector.fromAngle(a + HALF_PI).mult(controlLength);
          cPoint2 = point.copy().add(cPoint2);

          FPoint fp = new FPoint(point, cPoint1, cPoint2);
          fPointList.add(fp);
        }

        // Convert to FPoint primitive array
        points = new FPoint[fPointList.size()];
        for (int i = 0; i < fPointList.size(); i++) {
          points[i] = fPointList.get(i);
        }
        glyph.addContour(points);
      }
    }
  }
  f.buildFont();
  f.cleanup();
}