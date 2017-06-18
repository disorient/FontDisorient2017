import java.util.Hashtable;

class DisorientFont {
  protected float pixelWidth = 5;
  protected float pixelHeight = 5;
  protected float fontHeight = 8;
  protected Hashtable<Character, DataFont> disorientFont = new Hashtable<Character, DataFont>();

  DisorientFont() {
    println("DisorientFont() called");
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
      if (disorientFont.containsKey(c)) {
        DataFont f = disorientFont.get(c);
        int w = f.getWidth();
        for (int y = 0; y < 8; y++) {
          pushMatrix();
          translate(xOffset, y * pixelHeight);
          for (int x = 0; x < w; x++) {

            if (f.get(x, y)) {
              pushMatrix();
              noStroke();
              translate(x * pixelWidth, 0);
              rect(0, 0, pixelWidth, pixelHeight);
              // ellipse(0, 0, pixelWidth, pixelHeight);

              // stroke(255);
              // if (random(1) < 0.5) {
              //   line(0, 0, pixelWidth, pixelHeight);
              // } else {
              //   line(pixelWidth, 0, 0, pixelHeight);
              // }
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

  protected int getCharWidth(char c) {
    return disorientFont.get(c).getWidth();
  }


  protected void init() {
    disorientFont.put(' ', new DataFont(String.join("\n",
    "    ",
    "    ",
    "    ",
    "    ",
    "    ",
    "    ",
    "    ",
    "    ")));

    disorientFont.put('a', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xx      xx")));

    disorientFont.put('b', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    disorientFont.put('c', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xx        ",
    "xx        ",
    "xx        ",
    "xxxxxxxxxx",
    " xxxxxxxxx")));

    disorientFont.put('d', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    disorientFont.put('e', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xxxxxxxxx ",
    " xxxxxxxx ")));

    disorientFont.put('f', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xx        ",
    "xx        ")));

    disorientFont.put('g', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xx  xxxxxx",
    "xx  xxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxxX")));

    disorientFont.put('h', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xx      xx")));

    disorientFont.put('i', new DataFont(String.join("\n",
    "xx",
    "xx",
    "  ",
    "xx",
    "xx",
    "xx",
    "xx",
    "xx")));

    disorientFont.put('j', new DataFont(String.join("\n",
    "        xx",
    "        xx",
    "          ",
    "        xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxx ")));

    disorientFont.put('k', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxx ",
    "xxxxxxxxx ",
    "xx      xx",
    "xx      xx",
    "xx      xx")));

    disorientFont.put('l', new DataFont(String.join("\n",
    "xx        ",
    "xx        ",
    "xx        ",
    "xx        ",
    "xx        ",
    "xx        ",
    "xxxxxxxxxx",
    " xxxxxxxxx")));

    disorientFont.put('m', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx")));

    disorientFont.put('n', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx")));

    disorientFont.put('o', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxx ")));

    disorientFont.put('p', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ",
    "xx        ",
    "xx        ")));

    disorientFont.put('q', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxxx",
    "        xx",
    "        xx")));

    disorientFont.put('r', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxx ",
    "xxxxxxxxx ",
    "xx     xxx",
    "xx      xx")));

    disorientFont.put('s', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xxxxxxxxx ",
    " xxxxxxxxx",
    "        xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    disorientFont.put('t', new DataFont(String.join("\n",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "    xx    ",
    "    xx    ",
    "    xx    ",
    "    xx    ",
    "    xx    ",
    "    xx    ")));

    disorientFont.put('u', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxx ")));

    disorientFont.put('v', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    disorientFont.put('w', new DataFont(String.join("\n",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    disorientFont.put('x', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    " xxxxxxxx ",
    " xxxxxxxx ",
    "xx      xx",
    "xx      xx",
    "xx      xx")));

    disorientFont.put('y', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxxx",
    "        xx",
    " xxxxxxxxx",
    " xxxxxxxx ")));


    disorientFont.put('z', new DataFont(String.join("\n",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "        xx",
    " xxxxxxxxx",
    "xxxxxxxxx ",
    "xx        ",
    "xxxxxxxxxx",
    "xxxxxxxxxx")));

    disorientFont.put('A', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xx      xx")));

    disorientFont.put('B', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    disorientFont.put('C', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xx        ",
    "xx        ",
    "xx        ",
    "xxxxxxxxxx",
    " xxxxxxxxx")));

    disorientFont.put('D', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    disorientFont.put('E', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xxxxxxxxxx",
    " xxxxxxxxx")));

    disorientFont.put('F', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xx        ",
    "xx        ")));

    disorientFont.put('G', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xx  xxxxxx",
    "xx  xxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxxx")));

    disorientFont.put('H', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xx      xx")));

    disorientFont.put('I', new DataFont(String.join("\n",
    "xx",
    "xx",
    "xx",
    "xx",
    "xx",
    "xx",
    "xx",
    "xx")));

    disorientFont.put('J', new DataFont(String.join("\n",
    "        xx",
    "        xx",
    "        xx",
    "        xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxx ")));

    disorientFont.put('K', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxx ",
    "xxxxxxxxx ",
    "xx      xx",
    "xx      xx",
    "xx      xx")));

    disorientFont.put('L', new DataFont(String.join("\n",
    "xx        ",
    "xx        ",
    "xx        ",
    "xx        ",
    "xx        ",
    "xx        ",
    "xxxxxxxxxx",
    " xxxxxxxxx")));

    disorientFont.put('M', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx")));

    disorientFont.put('N', new DataFont(String.join("\n",
    "xxx     xx",
    "xxxx    xx",
    "xxxxx   xx",
    "xx xxx  xx",
    "xx  xxx xx",
    "xx   xxxxx",
    "xx    xxxx",
    "xx     xxx")));

    disorientFont.put('O', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxx ")));

    disorientFont.put('P', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ",
    "xx        ",
    "xx        ")));

    disorientFont.put('Q', new DataFont(String.join("\n",
    " xxxxxxx  ",
    "xxxxxxxxx ",
    "xx     xx ",
    "xx     xx ",
    "xx     xx ",
    "xx     xx ",
    "xxxxxxxxxx",
    " xxxxxxxxx")));

    disorientFont.put('R', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxx ",
    "xxxxxxxxx ",
    "xx     xxx",
    "xx      xx")));

    disorientFont.put('S', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xxxxxxxxx ",
    " xxxxxxxxx",
    "        xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    disorientFont.put('T', new DataFont(String.join("\n",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "    xx    ",
    "    xx    ",
    "    xx    ",
    "    xx    ",
    "    xx    ",
    "    xx    ")));

    disorientFont.put('U', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxx ")));

    disorientFont.put('V', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    disorientFont.put('W', new DataFont(String.join("\n",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    disorientFont.put('X', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    " xxxxxxxx ",
    " xxxxxxxx ",
    "xx      xx",
    "xx      xx",
    "xx      xx")));

    disorientFont.put('Y', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxxx",
    "        xx",
    " xxxxxxxxx",
    " xxxxxxxx ")));


    disorientFont.put('Z', new DataFont(String.join("\n",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "        xx",
    " xxxxxxxxx",
    "xxxxxxxxx ",
    "xx        ",
    "xxxxxxxxxx",
    "xxxxxxxxxx")));

    disorientFont.put('1', new DataFont(String.join("\n",
    "xxx ",
    "xxxx",
    "  xx",
    "  xx",
    "  xx",
    "  xx",
    "  xx",
    "  xx")));

    disorientFont.put('2', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "        xx",
    " xxxxxxxxx",
    "xxxxxxxxx ",
    "xx        ",
    "xxxxxxxxxx",
    "xxxxxxxxxx")));

    disorientFont.put('3', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "        xx",
    " xxxxxxxxx",
    " xxxxxxxxx",
    "        xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    disorientFont.put('4', new DataFont(String.join("\n",
    "xx    xx  ",
    "xx    xx  ",
    "xx    xx  ",
    "xx    xx  ",
    "xxxxxxxxxx",
    " xxxxxxxxx",
    "      xx  ",
    "      xx  ")));

    disorientFont.put('5', new DataFont(String.join("\n",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "        xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    disorientFont.put('6', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxx ",
    "xx        ",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxx ")));

    disorientFont.put('7', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "        xx",
    "        xx",
    "        xx",
    "        xx",
    "        xx",
    "        xx")));

    disorientFont.put('8', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxx ")));

    disorientFont.put('9', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxxx",
    "        xx",
    " xxxxxxxxx",
    " xxxxxxxx ")));

    disorientFont.put('0', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxx ")));

    disorientFont.put('~', new DataFont(String.join("\n",
    "xxxx",
    "xxxx",
    "    ",
    "    ",
    "    ",
    "    ",
    "    ",
    "    ")));

    disorientFont.put('`', new DataFont(String.join("\n",
    "xx ",
    "xxx",
    " xx",
    "   ",
    "   ",
    "   ",
    "   ",
    "   ")));

    disorientFont.put('!', new DataFont(String.join("\n",
    "xx",
    "xx",
    "xx",
    "xx",
    "xx",
    "  ",
    "xx",
    "xx")));

    disorientFont.put('@', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx xxxxxxx",
    "xx xxxxxxx",
    "xx xx   xx",
    "xxxxxxxxxx",
    " xxxxxxxx ")));

    disorientFont.put('#', new DataFont(String.join("\n",
    "  xx  xx  ",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "  xx  xx  ",
    "  xx  xx  ",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "  xx  xx  ")));

    disorientFont.put('$', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx  xx    ",
    "xxxxxxxxx ",
    " xxxxxxxxx",
    "    xx  xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    disorientFont.put('%', new DataFont(String.join("\n",
    "xxx    xx ",
    "xxx   xxx ",
    "xxx  xxx  ",
    "    xxx   ",
    "   xxx    ",
    "  xxx  xxx",
    " xxx   xxx",
    " xx    xxx")));

    disorientFont.put('^', new DataFont(String.join("\n",
    "  xx  ",
    "xxxxxx",
    "xx  xx",
    "      ",
    "      ",
    "      ",
    "      ",
    "      ")));

    disorientFont.put('&', new DataFont(String.join("\n",
    " xxxxxx   ",
    "xxxxxxxx  ",
    "xx    xx  ",
    " xxxxxx xx",
    " xxxxxxxxx",
    "xx    xxx ",
    "xxxxxxxxxx",
    " xxxxxx xx")));

    disorientFont.put('*', new DataFont(String.join("\n",
    "xx  xx  xx",
    "xxx xx xxx",
    " xxxxxxxx ",
    "  xxxxxx  ",
    "  xxxxxx  ",
    " xxxxxxxx ",
    "xxx xx xxx",
    "xx  xx  xx")));

    disorientFont.put('(', new DataFont(String.join("\n",
    "  xx",
    " xxx",
    "xxx ",
    "xx  ",
    "xx  ",
    "xxx ",
    " xxx",
    "  xx")));

    disorientFont.put(')', new DataFont(String.join("\n",
    "xx  ",
    "xxx ",
    " xxx",
    "  xx",
    "  xx",
    " xxx",
    "xxx ",
    "xx  ")));

    disorientFont.put('_', new DataFont(String.join("\n",
    "          ",
    "          ",
    "          ",
    "          ",
    "          ",
    "          ",
    "xxxxxxxxxx",
    "xxxxxxxxxx")));

    disorientFont.put('-', new DataFont(String.join("\n",
    "          ",
    "          ",
    "          ",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "          ",
    "          ",
    "          ")));

    disorientFont.put('+', new DataFont(String.join("\n",
    "    xx    ",
    "    xx    ",
    "    xx    ",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "    xx    ",
    "    xx    ",
    "    xx    ")));

    disorientFont.put('=', new DataFont(String.join("\n",
    "          ",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "          ",
    "          ",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "          ")));

    disorientFont.put('[', new DataFont(String.join("\n",
    "xxxx",
    "xxxx",
    "xx  ",
    "xx  ",
    "xx  ",
    "xx  ",
    "xxxx",
    "xxxx")));

    disorientFont.put('{', new DataFont(String.join("\n",
    "  xx",
    " xxx",
    " xx ",
    "xx  ",
    "xx  ",
    " xx ",
    " xxx",
    "  xx")));

    disorientFont.put('}', new DataFont(String.join("\n",
    "xx  ",
    "xxx ",
    " xx ",
    "  xx",
    "  xx",
    " xx ",
    "xxx ",
    "xx  ")));

    disorientFont.put(']', new DataFont(String.join("\n",
    "xxxx",
    "xxxx",
    "  xx",
    "  xx",
    "  xx",
    "  xx",
    "xxxx",
    "xxxx")));

    disorientFont.put('\\', new DataFont(String.join("\n",
    "xx      ",
    "xxx     ",
    " xxx    ",
    "  xxx   ",
    "   xxx  ",
    "    xxx ",
    "     xxx",
    "      xx")));

    disorientFont.put(':', new DataFont(String.join("\n",
    "  ",
    "xx",
    "xx",
    "  ",
    "  ",
    "xx",
    "xx",
    "  ")));

    disorientFont.put(';', new DataFont(String.join("\n",
    "  ",
    "xx",
    "xx",
    "  ",
    "  ",
    "xx",
    "xx",
    "xx")));

    disorientFont.put('\'', new DataFont(String.join("\n",
    "xx",
    "xx",
    "xx",
    "xx",
    "  ",
    "  ",
    "  ",
    "  ")));

    disorientFont.put('"', new DataFont(String.join("\n",
    "xx xx",
    "xx xx",
    "xx xx",
    "xx xx",
    "     ",
    "     ",
    "     ",
    "     ")));

    disorientFont.put('>', new DataFont(String.join("\n",
    "xx   ",
    "xxx  ",
    " xxx ",
    "  xxx",
    "  xxx",
    " xxx ",
    "xxx  ",
    "xx   ")));

    disorientFont.put('<', new DataFont(String.join("\n",
    "   xx",
    "  xxx",
    " xxx ",
    "xxx  ",
    "xxx  ",
    " xxx ",
    "  xxx",
    "   xx")));

    disorientFont.put('?', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "    xxxxxx",
    "    xxxxx ",
    "          ",
    "    xx    ",
    "    xx    ")));

    disorientFont.put(',', new DataFont(String.join("\n",
    "  ",
    "  ",
    "  ",
    "  ",
    "xx",
    "xx",
    "xx",
    "xx")));

    disorientFont.put('.', new DataFont(String.join("\n",
    "  ",
    "  ",
    "  ",
    "  ",
    "  ",
    "  ",
    "xx",
    "xx")));

    disorientFont.put('/', new DataFont(String.join("\n",
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
