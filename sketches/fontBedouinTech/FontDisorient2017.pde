import java.util.Hashtable;
import java.util.Enumeration;

class FontDisorient2017 {
  protected float pixelWidth = 5;
  protected float pixelHeight = 5;
  protected float fontHeight = 8;
  protected Hashtable<Character, DataFont> fontDisorient2017 = new Hashtable<Character, DataFont>();

  FontDisorient2017() {
    println("FontDisorient2017() called");
    init();
  }

  void setHeight(float fontHeight) {
    this.fontHeight = fontHeight;
    this.pixelHeight = fontHeight / 8.0;
    this.pixelWidth = fontHeight / 8.0;
  }

  void text(String s, float xPos, float yPos) {
    pushStyle();
    ellipseMode(CORNER);
    pushMatrix();
    translate(xPos, yPos);
    float xOffset = 0;

    ellipseMode(CENTER);
    for (char c : s.toCharArray()) {
      if (fontDisorient2017.containsKey(c)) {
        DataFont f = fontDisorient2017.get(c);
        int w = f.getWidth();
        for (int y = 0; y < 8; y++) {
          pushMatrix();
          translate(xOffset, y * pixelHeight);
          for (int x = 0; x < w; x++) {
            char type = f.get(x, y);
            if (type == '0') {
              pushMatrix();
              noStroke();
              ellipseMode(CORNER);
              translate(x * pixelWidth, 0);
              ellipse(0, 0, pixelWidth, pixelHeight);
              popMatrix();
            } else if (type == '1') {
              pushMatrix();
              noStroke();
              ellipseMode(CORNER);
              translate(x * pixelWidth, 0);
              ellipse(0, 0, pixelWidth, pixelHeight * 2);
              popMatrix();
            } else if (type == '2') {
              pushMatrix();
              noStroke();
              ellipseMode(CORNER);
              translate(x * pixelWidth, 0);
              ellipse(0, 0, pixelWidth * 2, pixelHeight);
              popMatrix();
            } else if (type == '3') {
              pushMatrix();
              noStroke();
              ellipseMode(CORNER);
              translate(x * pixelWidth, 0);
              ellipse(0, 0, pixelWidth, pixelHeight * 2);
              ellipse(0, pixelHeight, pixelWidth * 2, pixelHeight);
              popMatrix();
            } else if (type == '4') {
              pushMatrix();
              noStroke();
              ellipseMode(CORNER);
              translate(x * pixelWidth, 0);
              ellipse(0, 0, pixelWidth, pixelHeight * 2);
              ellipse(-pixelHeight, pixelHeight, pixelWidth * 2, pixelHeight);
              popMatrix();
            }
          }
          popMatrix();
        }
        xOffset += (w + 1) * pixelWidth;
      }
    }
    popMatrix();
    popStyle();
  }

  ArrayList<PVector> getPoints(char c) {
    ArrayList<PVector> list = new ArrayList<PVector>();

    if (fontDisorient2017.containsKey(c)) {
      DataFont f = fontDisorient2017.get(c);
      int w = f.getWidth();

      for (int y = 0; y < 8; y++) {
        for (int x = 0; x < w; x++) {
          if (f.get(x, y) == '0') {
            list.add(new PVector(x, y));
          }
        }
      }
    }

    return list;
  }

  Enumeration<Character> getKeys() {
    Enumeration<Character> list = fontDisorient2017.keys();
    return list;
  }

  int getCharWidth(char c) {
    return fontDisorient2017.get(c).getWidth();
  }


  protected void init() {
    fontDisorient2017.put(' ', new DataFont(String.join("\n", 
      "    ", 
      "    ", 
      "    ", 
      "    ", 
      "    ", 
      "    ", 
      "    ", 
      "    ")));

    fontDisorient2017.put('a', new DataFont(String.join("\n", 
      " 2-00002- ", 
      " 02-002-2-", 
      "        01", 
      " 102-02-1!", 
      "3!2-2-00!4", 
      "##      $$", 
      "00012-042-", 
      " 00!2-$$2-")));

    fontDisorient2017.put('b', new DataFont(String.join("\n", 
      "xxxxxxxxx ", 
      "xxxxxxxxxx", 
      "xx      xx", 
      "xxxxxxxxxx", 
      "xxxxxxxxxx", 
      "xx      xx", 
      "xxxxxxxxxx", 
      "xxxxxxxxx ")));

    fontDisorient2017.put('c', new DataFont(String.join("\n", 
      " xxxxxxxxx", 
      "xxxxxxxxxx", 
      "xx        ", 
      "xx        ", 
      "xx        ", 
      "xx        ", 
      "xxxxxxxxxx", 
      " xxxxxxxxx")));

    fontDisorient2017.put('d', new DataFont(String.join("\n", 
      "xxxxxxxxx ", 
      "xxxxxxxxxx", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      "xxxxxxxxxx", 
      "xxxxxxxxx ")));

    fontDisorient2017.put('e', new DataFont(String.join("\n", 
      " xxxxxxxx ", 
      "xxxxxxxxxx", 
      "xx      xx", 
      "xxxxxxxxxx", 
      "xxxxxxxxxx", 
      "xx        ", 
      "xxxxxxxxx ", 
      " xxxxxxxx ")));

    fontDisorient2017.put('f', new DataFont(String.join("\n", 
      " xxxxxxxxx", 
      "xxxxxxxxxx", 
      "xx        ", 
      "xxxxxxxxx ", 
      "xxxxxxxxx ", 
      "xx        ", 
      "xx        ", 
      "xx        ")));

    fontDisorient2017.put('g', new DataFont(String.join("\n", 
      " xxxxxxxxx", 
      "xxxxxxxxxx", 
      "xx        ", 
      "xx  xxxxxx", 
      "xx  xxxxxx", 
      "xx      xx", 
      "xxxxxxxxxx", 
      " xxxxxxxxX")));

    fontDisorient2017.put('h', new DataFont(String.join("\n", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      "xxxxxxxxxx", 
      "xxxxxxxxxx", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx")));

    fontDisorient2017.put('i', new DataFont(String.join("\n", 
      "xx", 
      "xx", 
      "  ", 
      "xx", 
      "xx", 
      "xx", 
      "xx", 
      "xx")));

    fontDisorient2017.put('j', new DataFont(String.join("\n", 
      "        xx", 
      "        xx", 
      "          ", 
      "        xx", 
      "xx      xx", 
      "xx      xx", 
      "xxxxxxxxxx", 
      " xxxxxxxx ")));

    fontDisorient2017.put('k', new DataFont(String.join("\n", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      "xxxxxxxxx ", 
      "xxxxxxxxx ", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx")));

    fontDisorient2017.put('l', new DataFont(String.join("\n", 
      "xx        ", 
      "xx        ", 
      "xx        ", 
      "xx        ", 
      "xx        ", 
      "xx        ", 
      "xxxxxxxxxx", 
      " xxxxxxxxx")));

    fontDisorient2017.put('m', new DataFont(String.join("\n", 
      "xxxxxxxxx ", 
      "xxxxxxxxxx", 
      "xx  xx  xx", 
      "xx  xx  xx", 
      "xx  xx  xx", 
      "xx  xx  xx", 
      "xx  xx  xx", 
      "xx  xx  xx")));

    fontDisorient2017.put('n', new DataFont(String.join("\n", 
      "xxxxxxxxx ", 
      "xxxxxxxxxx", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx")));

    fontDisorient2017.put('o', new DataFont(String.join("\n", 
      " xxxxxxxx ", 
      "xxxxxxxxxx", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      "xxxxxxxxxx", 
      " xxxxxxxx ")));

    fontDisorient2017.put('p', new DataFont(String.join("\n", 
      "xxxxxxxxx ", 
      "xxxxxxxxxx", 
      "xx      xx", 
      "xx      xx", 
      "xxxxxxxxxx", 
      "xxxxxxxxx ", 
      "xx        ", 
      "xx        ")));

    fontDisorient2017.put('q', new DataFont(String.join("\n", 
      " xxxxxxxx ", 
      "xxxxxxxxxx", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      "xx     xxx", 
      "xxxxxxxxxx", 
      " xxxxxx   ")));

    fontDisorient2017.put('r', new DataFont(String.join("\n", 
      "xxxxxxxxx ", 
      "xxxxxxxxxx", 
      "xx      xx", 
      "xx      xx", 
      "xxxxxxxxx ", 
      "xxxxxxxxx ", 
      "xx     xxx", 
      "xx      xx")));

    fontDisorient2017.put('s', new DataFont(String.join("\n", 
      " xxxxxxxxx", 
      "xxxxxxxxxx", 
      "xx        ", 
      "xxxxxxxxx ", 
      " xxxxxxxxx", 
      "        xx", 
      "xxxxxxxxxx", 
      "xxxxxxxxx ")));

    fontDisorient2017.put('t', new DataFont(String.join("\n", 
      "xxxxxxxxxx", 
      "xxxxxxxxxx", 
      "    xx    ", 
      "    xx    ", 
      "    xx    ", 
      "    xx    ", 
      "    xx    ", 
      "    xx    ")));

    fontDisorient2017.put('u', new DataFont(String.join("\n", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      "xxxxxxxxxx", 
      " xxxxxxxx ")));

    fontDisorient2017.put('v', new DataFont(String.join("\n", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      "xx     xxx", 
      "xxxxxxxxx ", 
      "xxxxxxxx  ")));

    fontDisorient2017.put('w', new DataFont(String.join("\n", 
      "xx  xx  xx", 
      "xx  xx  xx", 
      "xx  xx  xx", 
      "xx  xx  xx", 
      "xx  xx  xx", 
      "xx  xx  xx", 
      "xxxxxxxxxx", 
      "xxxxxxxxx ")));

    fontDisorient2017.put('x', new DataFont(String.join("\n", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      " xxxxxxxx ", 
      " xxxxxxxx ", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx")));

    fontDisorient2017.put('y', new DataFont(String.join("\n", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      "xxxxxxxxxx", 
      " xxxxxxxx ", 
      "    xx    ", 
      "    xx    ", 
      "    xx    ")));

    fontDisorient2017.put('z', new DataFont(String.join("\n", 
      "xxxxxxxxxx", 
      "xxxxxxxxxx", 
      "        xx", 
      " xxxxxxxxx", 
      "xxxxxxxxx ", 
      "xx        ", 
      "xxxxxxxxxx", 
      "xxxxxxxxxx")));

    // Use lowercase set for uppercase set
    for (char c : "abcdefghijklmnopqrstuvwxyz".toCharArray()) {
      char u = Character.toUpperCase(c);
      fontDisorient2017.put(u, fontDisorient2017.get(c));
    }

    fontDisorient2017.put('1', new DataFont(String.join("\n", 
      "xxx ", 
      "xxxx", 
      "  xx", 
      "  xx", 
      "  xx", 
      "  xx", 
      "  xx", 
      "  xx")));

    fontDisorient2017.put('2', new DataFont(String.join("\n", 
      "xxxxxxxxx ", 
      "xxxxxxxxxx", 
      "        xx", 
      " xxxxxxxxx", 
      "xxxxxxxxx ", 
      "xx        ", 
      "xxxxxxxxxx", 
      "xxxxxxxxxx")));

    fontDisorient2017.put('3', new DataFont(String.join("\n", 
      "xxxxxxxxx ", 
      "xxxxxxxxxx", 
      "        xx", 
      " xxxxxxxxx", 
      " xxxxxxxxx", 
      "        xx", 
      "xxxxxxxxxx", 
      "xxxxxxxxx ")));

    fontDisorient2017.put('4', new DataFont(String.join("\n", 
      "xx    xx  ", 
      "xx    xx  ", 
      "xx    xx  ", 
      "xx    xx  ", 
      "xxxxxxxxxx", 
      " xxxxxxxxx", 
      "      xx  ", 
      "      xx  ")));

    fontDisorient2017.put('5', new DataFont(String.join("\n", 
      "xxxxxxxxxx", 
      "xxxxxxxxxx", 
      "xx        ", 
      "xxxxxxxxx ", 
      "xxxxxxxxxx", 
      "        xx", 
      "xxxxxxxxxx", 
      "xxxxxxxxx ")));

    fontDisorient2017.put('6', new DataFont(String.join("\n", 
      " xxxxxxxx ", 
      "xxxxxxxxx ", 
      "xx        ", 
      "xxxxxxxxx ", 
      "xxxxxxxxxx", 
      "xx      xx", 
      "xxxxxxxxxx", 
      " xxxxxxxx ")));

    fontDisorient2017.put('7', new DataFont(String.join("\n", 
      "xxxxxxxxx ", 
      "xxxxxxxxxx", 
      "        xx", 
      "        xx", 
      "        xx", 
      "        xx", 
      "        xx", 
      "        xx")));

    fontDisorient2017.put('8', new DataFont(String.join("\n", 
      " xxxxxxxx ", 
      "xxxxxxxxxx", 
      "xx      xx", 
      "xxxxxxxxxx", 
      "xxxxxxxxxx", 
      "xx      xx", 
      "xxxxxxxxxx", 
      " xxxxxxxx ")));

    fontDisorient2017.put('9', new DataFont(String.join("\n", 
      " xxxxxxxx ", 
      "xxxxxxxxxx", 
      "xx      xx", 
      "xxxxxxxxxx", 
      " xxxxxxxxx", 
      "        xx", 
      " xxxxxxxxx", 
      " xxxxxxxx ")));

    fontDisorient2017.put('0', new DataFont(String.join("\n", 
      " xxxxxxxx ", 
      "xxxxxxxxxx", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      "xx      xx", 
      "xxxxxxxxxx", 
      " xxxxxxxx ")));

    fontDisorient2017.put('~', new DataFont(String.join("\n", 
      "xxxx", 
      "xxxx", 
      "    ", 
      "    ", 
      "    ", 
      "    ", 
      "    ", 
      "    ")));

    fontDisorient2017.put('`', new DataFont(String.join("\n", 
      "xx ", 
      "xxx", 
      " xx", 
      "   ", 
      "   ", 
      "   ", 
      "   ", 
      "   ")));

    fontDisorient2017.put('!', new DataFont(String.join("\n", 
      "xx", 
      "xx", 
      "xx", 
      "xx", 
      "xx", 
      "  ", 
      "xx", 
      "xx")));

    fontDisorient2017.put('@', new DataFont(String.join("\n", 
      " xxxxxxxx ", 
      "xxxxxxxxxx", 
      "xx      xx", 
      "xx xxxxxxx", 
      "xx xxxxxxx", 
      "xx xx   xx", 
      "xxxxxxxxxx", 
      " xxxxxxxx ")));

    fontDisorient2017.put('#', new DataFont(String.join("\n", 
      "  xx  xx  ", 
      "xxxxxxxxxx", 
      "xxxxxxxxxx", 
      "  xx  xx  ", 
      "  xx  xx  ", 
      "xxxxxxxxxx", 
      "xxxxxxxxxx", 
      "  xx  xx  ")));

    fontDisorient2017.put('$', new DataFont(String.join("\n", 
      " xxxxxxxxx", 
      "xxxxxxxxxx", 
      "xx  xx    ", 
      "xxxxxxxxx ", 
      " xxxxxxxxx", 
      "    xx  xx", 
      "xxxxxxxxxx", 
      "xxxxxxxxx ")));

    fontDisorient2017.put('%', new DataFont(String.join("\n", 
      "xxx    xx ", 
      "xxx   xxx ", 
      "xxx  xxx  ", 
      "    xxx   ", 
      "   xxx    ", 
      "  xxx  xxx", 
      " xxx   xxx", 
      " xx    xxx")));

    fontDisorient2017.put('^', new DataFont(String.join("\n", 
      "  xx  ", 
      "xxxxxx", 
      "xx  xx", 
      "      ", 
      "      ", 
      "      ", 
      "      ", 
      "      ")));

    fontDisorient2017.put('&', new DataFont(String.join("\n", 
      " xxxxxx   ", 
      "xxxxxxxx  ", 
      "xx    xx  ", 
      " xxxxxx xx", 
      " xxxxxxxxx", 
      "xx    xxx ", 
      "xxxxxxxxxx", 
      " xxxxxx xx")));

    fontDisorient2017.put('*', new DataFont(String.join("\n", 
      "xx  xx  xx", 
      "xxx xx xxx", 
      " xxxxxxxx ", 
      "  xxxxxx  ", 
      "  xxxxxx  ", 
      " xxxxxxxx ", 
      "xxx xx xxx", 
      "xx  xx  xx")));

    fontDisorient2017.put('(', new DataFont(String.join("\n", 
      "  xx", 
      " xxx", 
      "xxx ", 
      "xx  ", 
      "xx  ", 
      "xxx ", 
      " xxx", 
      "  xx")));

    fontDisorient2017.put(')', new DataFont(String.join("\n", 
      "xx  ", 
      "xxx ", 
      " xxx", 
      "  xx", 
      "  xx", 
      " xxx", 
      "xxx ", 
      "xx  ")));

    fontDisorient2017.put('_', new DataFont(String.join("\n", 
      "          ", 
      "          ", 
      "          ", 
      "          ", 
      "          ", 
      "          ", 
      "xxxxxxxxxx", 
      "xxxxxxxxxx")));

    fontDisorient2017.put('-', new DataFont(String.join("\n", 
      "          ", 
      "          ", 
      "          ", 
      "xxxxxxxxxx", 
      "xxxxxxxxxx", 
      "          ", 
      "          ", 
      "          ")));

    fontDisorient2017.put('+', new DataFont(String.join("\n", 
      "    xx    ", 
      "    xx    ", 
      "    xx    ", 
      "xxxxxxxxxx", 
      "xxxxxxxxxx", 
      "    xx    ", 
      "    xx    ", 
      "    xx    ")));

    fontDisorient2017.put('=', new DataFont(String.join("\n", 
      "          ", 
      "xxxxxxxxxx", 
      "xxxxxxxxxx", 
      "          ", 
      "          ", 
      "xxxxxxxxxx", 
      "xxxxxxxxxx", 
      "          ")));

    fontDisorient2017.put('[', new DataFont(String.join("\n", 
      "xxxx", 
      "xxxx", 
      "xx  ", 
      "xx  ", 
      "xx  ", 
      "xx  ", 
      "xxxx", 
      "xxxx")));

    fontDisorient2017.put('{', new DataFont(String.join("\n", 
      "  xx", 
      " xxx", 
      " xx ", 
      "xx  ", 
      "xx  ", 
      " xx ", 
      " xxx", 
      "  xx")));

    fontDisorient2017.put('}', new DataFont(String.join("\n", 
      "xx  ", 
      "xxx ", 
      " xx ", 
      "  xx", 
      "  xx", 
      " xx ", 
      "xxx ", 
      "xx  ")));

    fontDisorient2017.put(']', new DataFont(String.join("\n", 
      "xxxx", 
      "xxxx", 
      "  xx", 
      "  xx", 
      "  xx", 
      "  xx", 
      "xxxx", 
      "xxxx")));

    fontDisorient2017.put('|', new DataFont(String.join("\n", 
      "xx", 
      "xx", 
      "xx", 
      "xx", 
      "xx", 
      "xx", 
      "xx", 
      "xx")));

    fontDisorient2017.put('\\', new DataFont(String.join("\n", 
      "xx      ", 
      "xxx     ", 
      " xxx    ", 
      "  xxx   ", 
      "   xxx  ", 
      "    xxx ", 
      "     xxx", 
      "      xx")));

    fontDisorient2017.put(':', new DataFont(String.join("\n", 
      "  ", 
      "xx", 
      "xx", 
      "  ", 
      "  ", 
      "xx", 
      "xx", 
      "  ")));

    fontDisorient2017.put(';', new DataFont(String.join("\n", 
      "  ", 
      "xx", 
      "xx", 
      "  ", 
      "  ", 
      "xx", 
      "xx", 
      "xx")));

    fontDisorient2017.put('\'', new DataFont(String.join("\n", 
      "xx", 
      "xx", 
      "xx", 
      "xx", 
      "  ", 
      "  ", 
      "  ", 
      "  ")));

    fontDisorient2017.put('"', new DataFont(String.join("\n", 
      "xx xx", 
      "xx xx", 
      "xx xx", 
      "xx xx", 
      "     ", 
      "     ", 
      "     ", 
      "     ")));

    fontDisorient2017.put('>', new DataFont(String.join("\n", 
      "xx   ", 
      "xxx  ", 
      " xxx ", 
      "  xxx", 
      "  xxx", 
      " xxx ", 
      "xxx  ", 
      "xx   ")));

    fontDisorient2017.put('<', new DataFont(String.join("\n", 
      "   xx", 
      "  xxx", 
      " xxx ", 
      "xxx  ", 
      "xxx  ", 
      " xxx ", 
      "  xxx", 
      "   xx")));

    fontDisorient2017.put('?', new DataFont(String.join("\n", 
      " xxxxxxxx ", 
      "xxxxxxxxxx", 
      "xx      xx", 
      "    xxxxxx", 
      "    xxxxx ", 
      "          ", 
      "    xx    ", 
      "    xx    ")));

    fontDisorient2017.put(',', new DataFont(String.join("\n", 
      "  ", 
      "  ", 
      "  ", 
      "  ", 
      "xx", 
      "xx", 
      "xx", 
      "xx")));

    fontDisorient2017.put('.', new DataFont(String.join("\n", 
      "  ", 
      "  ", 
      "  ", 
      "  ", 
      "  ", 
      "  ", 
      "xx", 
      "xx")));

    fontDisorient2017.put('/', new DataFont(String.join("\n", 
      "      xx", 
      "     xxx", 
      "    xxx ", 
      "   xxx  ", 
      "  xxx   ", 
      " xxx    ", 
      "xxx     ", 
      "xx      ")));
  }
}