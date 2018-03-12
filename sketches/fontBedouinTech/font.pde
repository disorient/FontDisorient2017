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