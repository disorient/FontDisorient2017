import java.util.Hashtable;

class FontDisorient2017 {
  protected float pixelWidth = 5;
  protected float pixelHeight = 5;
  protected float fontHeight = 8;
  protected Hashtable<Character, DataFont> FontDisorient2017 = new Hashtable<Character, DataFont>();

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
      if (FontDisorient2017.containsKey(c)) {
        DataFont f = FontDisorient2017.get(c);
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
    return FontDisorient2017.get(c).getWidth();
  }


  protected void init() {
    FontDisorient2017.put(' ', new DataFont(String.join("\n",
    "    ",
    "    ",
    "    ",
    "    ",
    "    ",
    "    ",
    "    ",
    "    ")));

    FontDisorient2017.put('a', new DataFont(String.join("\n",
    " xxxxxxxx ",
    " xxxxxxxxx",
    "        xx",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxxx")));

    FontDisorient2017.put('b', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    FontDisorient2017.put('c', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xx        ",
    "xx        ",
    "xx        ",
    "xxxxxxxxxx",
    " xxxxxxxxx")));

    FontDisorient2017.put('d', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    FontDisorient2017.put('e', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xxxxxxxxx ",
    " xxxxxxxx ")));

    FontDisorient2017.put('f', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xxxxxxxxx ",
    "xxxxxxxxx ",
    "xx        ",
    "xx        ",
    "xx        ")));

    FontDisorient2017.put('g', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xx  xxxxxx",
    "xx  xxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxxX")));

    FontDisorient2017.put('h', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xx      xx")));

    FontDisorient2017.put('i', new DataFont(String.join("\n",
    "xx",
    "xx",
    "  ",
    "xx",
    "xx",
    "xx",
    "xx",
    "xx")));

    FontDisorient2017.put('j', new DataFont(String.join("\n",
    "        xx",
    "        xx",
    "          ",
    "        xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxx ")));

    FontDisorient2017.put('k', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxx ",
    "xxxxxxxxx ",
    "xx      xx",
    "xx      xx",
    "xx      xx")));

    FontDisorient2017.put('l', new DataFont(String.join("\n",
    "xx        ",
    "xx        ",
    "xx        ",
    "xx        ",
    "xx        ",
    "xx        ",
    "xxxxxxxxxx",
    " xxxxxxxxx")));

    FontDisorient2017.put('m', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx")));

    FontDisorient2017.put('n', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx")));

    FontDisorient2017.put('o', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxx ")));

    FontDisorient2017.put('p', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ",
    "xx        ",
    "xx        ")));

    // FontDisorient2017.put('q', new DataFont(String.join("\n",
    // " xxxxxxxxx",
    // "xxxxxxxxxx",
    // "xx      xx",
    // "xx      xx",
    // "xxxxxxxxxx",
    // " xxxxxxxxx",
    // "        xx",
    // "        xx")));

    FontDisorient2017.put('q', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx     xxx",
    "xxxxxxxxxx",
    " xxxxxx   ")));

    FontDisorient2017.put('r', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxx ",
    "xxxxxxxxx ",
    "xx     xxx",
    "xx      xx")));

    FontDisorient2017.put('s', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xxxxxxxxx ",
    " xxxxxxxxx",
    "        xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    FontDisorient2017.put('t', new DataFont(String.join("\n",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "    xx    ",
    "    xx    ",
    "    xx    ",
    "    xx    ",
    "    xx    ",
    "    xx    ")));

    FontDisorient2017.put('u', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxx ")));

    // FontDisorient2017.put('v', new DataFont(String.join("\n",
    // "xx      xx",
    // "xx      xx",
    // "xx      xx",
    // "xx      xx",
    // "xx      xx",
    // "xx      xx",
    // "xxxxxxxxxx",
    // "xxxxxxxxx ")));

    FontDisorient2017.put('v', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx     xxx",
    "xxxxxxxxx ",
    "xxxxxxxx  ")));

    FontDisorient2017.put('w', new DataFont(String.join("\n",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    FontDisorient2017.put('x', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    " xxxxxxxx ",
    " xxxxxxxx ",
    "xx      xx",
    "xx      xx",
    "xx      xx")));

    FontDisorient2017.put('y', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxx ",
    "    xx    ",
    "    xx    ",
    "    xx    ")));

    FontDisorient2017.put('z', new DataFont(String.join("\n",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "        xx",
    " xxxxxxxxx",
    "xxxxxxxxx ",
    "xx        ",
    "xxxxxxxxxx",
    "xxxxxxxxxx")));

    // FontDisorient2017.put('A', new DataFont(String.join("\n",
    // " xxxxxxxx ",
    // "xxxxxxxxxx",
    // "xx      xx",
    // "xxxxxxxxxx",
    // "xxxxxxxxxx",
    // "xx      xx",
    // "xx      xx",
    // "xx      xx")));

    FontDisorient2017.put('A', new DataFont(String.join("\n",
    " xxxxxxxx ",
    " xxxxxxxxx",
    "        xx",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxxx")));

    FontDisorient2017.put('B', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    FontDisorient2017.put('C', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xx        ",
    "xx        ",
    "xx        ",
    "xxxxxxxxxx",
    " xxxxxxxxx")));

    FontDisorient2017.put('D', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    FontDisorient2017.put('E', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xxxxxxxxxx",
    " xxxxxxxxx")));

    // FontDisorient2017.put('F', new DataFont(String.join("\n",
    // " xxxxxxxxx",
    // "xxxxxxxxxx",
    // "xx        ",
    // "xxxxxxxxxx",
    // "xxxxxxxxxx",
    // "xx        ",
    // "xx        ",
    // "xx        ")));

    FontDisorient2017.put('F', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xxxxxxxxx ",
    "xxxxxxxxx ",
    "xx        ",
    "xx        ",
    "xx        ")));

    FontDisorient2017.put('G', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xx  xxxxxx",
    "xx  xxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxxx")));

    FontDisorient2017.put('H', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xx      xx")));

    FontDisorient2017.put('I', new DataFont(String.join("\n",
    "xx",
    "xx",
    "xx",
    "xx",
    "xx",
    "xx",
    "xx",
    "xx")));

    FontDisorient2017.put('J', new DataFont(String.join("\n",
    "        xx",
    "        xx",
    "        xx",
    "        xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxx ")));

    FontDisorient2017.put('K', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxx ",
    "xxxxxxxxx ",
    "xx      xx",
    "xx      xx",
    "xx      xx")));

    FontDisorient2017.put('L', new DataFont(String.join("\n",
    "xx        ",
    "xx        ",
    "xx        ",
    "xx        ",
    "xx        ",
    "xx        ",
    "xxxxxxxxxx",
    " xxxxxxxxx")));

    FontDisorient2017.put('M', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx")));

    FontDisorient2017.put('N', new DataFont(String.join("\n",
    "xxx     xx",
    "xxxx    xx",
    "xxxxx   xx",
    "xx xxx  xx",
    "xx  xxx xx",
    "xx   xxxxx",
    "xx    xxxx",
    "xx     xxx")));

    FontDisorient2017.put('O', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxx ")));

    FontDisorient2017.put('P', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ",
    "xx        ",
    "xx        ")));

    FontDisorient2017.put('Q', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx     xxx",
    "xxxxxxxxxx",
    " xxxxxx   ")));

    FontDisorient2017.put('R', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxx ",
    "xxxxxxxxx ",
    "xx     xxx",
    "xx      xx")));

    FontDisorient2017.put('S', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xxxxxxxxx ",
    " xxxxxxxxx",
    "        xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    FontDisorient2017.put('T', new DataFont(String.join("\n",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "    xx    ",
    "    xx    ",
    "    xx    ",
    "    xx    ",
    "    xx    ",
    "    xx    ")));

    FontDisorient2017.put('U', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxx ")));

    FontDisorient2017.put('V', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx     xxx",
    "xxxxxxxxx ",
    "xxxxxxxx  ")));

    FontDisorient2017.put('W', new DataFont(String.join("\n",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xx  xx  xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    FontDisorient2017.put('X', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    " xxxxxxxx ",
    " xxxxxxxx ",
    "xx      xx",
    "xx      xx",
    "xx      xx")));

    // FontDisorient2017.put('Y', new DataFont(String.join("\n",
    // "xx      xx",
    // "xx      xx",
    // "xx      xx",
    // "xxxxxxxxxx",
    // " xxxxxxxxx",
    // "        xx",
    // " xxxxxxxxx",
    // " xxxxxxxx ")));

    FontDisorient2017.put('Y', new DataFont(String.join("\n",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxx ",
    "    xx    ",
    "    xx    ",
    "    xx    ")));

    FontDisorient2017.put('Z', new DataFont(String.join("\n",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "        xx",
    " xxxxxxxxx",
    "xxxxxxxxx ",
    "xx        ",
    "xxxxxxxxxx",
    "xxxxxxxxxx")));

    FontDisorient2017.put('1', new DataFont(String.join("\n",
    "xxx ",
    "xxxx",
    "  xx",
    "  xx",
    "  xx",
    "  xx",
    "  xx",
    "  xx")));

    FontDisorient2017.put('2', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "        xx",
    " xxxxxxxxx",
    "xxxxxxxxx ",
    "xx        ",
    "xxxxxxxxxx",
    "xxxxxxxxxx")));

    FontDisorient2017.put('3', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "        xx",
    " xxxxxxxxx",
    " xxxxxxxxx",
    "        xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    FontDisorient2017.put('4', new DataFont(String.join("\n",
    "xx    xx  ",
    "xx    xx  ",
    "xx    xx  ",
    "xx    xx  ",
    "xxxxxxxxxx",
    " xxxxxxxxx",
    "      xx  ",
    "      xx  ")));

    FontDisorient2017.put('5', new DataFont(String.join("\n",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "xx        ",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "        xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    FontDisorient2017.put('6', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxx ",
    "xx        ",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxx ")));

    FontDisorient2017.put('7', new DataFont(String.join("\n",
    "xxxxxxxxx ",
    "xxxxxxxxxx",
    "        xx",
    "        xx",
    "        xx",
    "        xx",
    "        xx",
    "        xx")));

    FontDisorient2017.put('8', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxx ")));

    FontDisorient2017.put('9', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxxx",
    "        xx",
    " xxxxxxxxx",
    " xxxxxxxx ")));

    FontDisorient2017.put('0', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xx      xx",
    "xxxxxxxxxx",
    " xxxxxxxx ")));

    FontDisorient2017.put('~', new DataFont(String.join("\n",
    "xxxx",
    "xxxx",
    "    ",
    "    ",
    "    ",
    "    ",
    "    ",
    "    ")));

    FontDisorient2017.put('`', new DataFont(String.join("\n",
    "xx ",
    "xxx",
    " xx",
    "   ",
    "   ",
    "   ",
    "   ",
    "   ")));

    FontDisorient2017.put('!', new DataFont(String.join("\n",
    "xx",
    "xx",
    "xx",
    "xx",
    "xx",
    "  ",
    "xx",
    "xx")));

    FontDisorient2017.put('@', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "xx xxxxxxx",
    "xx xxxxxxx",
    "xx xx   xx",
    "xxxxxxxxxx",
    " xxxxxxxx ")));

    FontDisorient2017.put('#', new DataFont(String.join("\n",
    "  xx  xx  ",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "  xx  xx  ",
    "  xx  xx  ",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "  xx  xx  ")));

    FontDisorient2017.put('$', new DataFont(String.join("\n",
    " xxxxxxxxx",
    "xxxxxxxxxx",
    "xx  xx    ",
    "xxxxxxxxx ",
    " xxxxxxxxx",
    "    xx  xx",
    "xxxxxxxxxx",
    "xxxxxxxxx ")));

    FontDisorient2017.put('%', new DataFont(String.join("\n",
    "xxx    xx ",
    "xxx   xxx ",
    "xxx  xxx  ",
    "    xxx   ",
    "   xxx    ",
    "  xxx  xxx",
    " xxx   xxx",
    " xx    xxx")));

    FontDisorient2017.put('^', new DataFont(String.join("\n",
    "  xx  ",
    "xxxxxx",
    "xx  xx",
    "      ",
    "      ",
    "      ",
    "      ",
    "      ")));

    FontDisorient2017.put('&', new DataFont(String.join("\n",
    " xxxxxx   ",
    "xxxxxxxx  ",
    "xx    xx  ",
    " xxxxxx xx",
    " xxxxxxxxx",
    "xx    xxx ",
    "xxxxxxxxxx",
    " xxxxxx xx")));

    FontDisorient2017.put('*', new DataFont(String.join("\n",
    "xx  xx  xx",
    "xxx xx xxx",
    " xxxxxxxx ",
    "  xxxxxx  ",
    "  xxxxxx  ",
    " xxxxxxxx ",
    "xxx xx xxx",
    "xx  xx  xx")));

    FontDisorient2017.put('(', new DataFont(String.join("\n",
    "  xx",
    " xxx",
    "xxx ",
    "xx  ",
    "xx  ",
    "xxx ",
    " xxx",
    "  xx")));

    FontDisorient2017.put(')', new DataFont(String.join("\n",
    "xx  ",
    "xxx ",
    " xxx",
    "  xx",
    "  xx",
    " xxx",
    "xxx ",
    "xx  ")));

    FontDisorient2017.put('_', new DataFont(String.join("\n",
    "          ",
    "          ",
    "          ",
    "          ",
    "          ",
    "          ",
    "xxxxxxxxxx",
    "xxxxxxxxxx")));

    FontDisorient2017.put('-', new DataFont(String.join("\n",
    "          ",
    "          ",
    "          ",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "          ",
    "          ",
    "          ")));

    FontDisorient2017.put('+', new DataFont(String.join("\n",
    "    xx    ",
    "    xx    ",
    "    xx    ",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "    xx    ",
    "    xx    ",
    "    xx    ")));

    FontDisorient2017.put('=', new DataFont(String.join("\n",
    "          ",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "          ",
    "          ",
    "xxxxxxxxxx",
    "xxxxxxxxxx",
    "          ")));

    FontDisorient2017.put('[', new DataFont(String.join("\n",
    "xxxx",
    "xxxx",
    "xx  ",
    "xx  ",
    "xx  ",
    "xx  ",
    "xxxx",
    "xxxx")));

    FontDisorient2017.put('{', new DataFont(String.join("\n",
    "  xx",
    " xxx",
    " xx ",
    "xx  ",
    "xx  ",
    " xx ",
    " xxx",
    "  xx")));

    FontDisorient2017.put('}', new DataFont(String.join("\n",
    "xx  ",
    "xxx ",
    " xx ",
    "  xx",
    "  xx",
    " xx ",
    "xxx ",
    "xx  ")));

    FontDisorient2017.put(']', new DataFont(String.join("\n",
    "xxxx",
    "xxxx",
    "  xx",
    "  xx",
    "  xx",
    "  xx",
    "xxxx",
    "xxxx")));

    FontDisorient2017.put('\\', new DataFont(String.join("\n",
    "xx      ",
    "xxx     ",
    " xxx    ",
    "  xxx   ",
    "   xxx  ",
    "    xxx ",
    "     xxx",
    "      xx")));

    FontDisorient2017.put(':', new DataFont(String.join("\n",
    "  ",
    "xx",
    "xx",
    "  ",
    "  ",
    "xx",
    "xx",
    "  ")));

    FontDisorient2017.put(';', new DataFont(String.join("\n",
    "  ",
    "xx",
    "xx",
    "  ",
    "  ",
    "xx",
    "xx",
    "xx")));

    FontDisorient2017.put('\'', new DataFont(String.join("\n",
    "xx",
    "xx",
    "xx",
    "xx",
    "  ",
    "  ",
    "  ",
    "  ")));

    FontDisorient2017.put('"', new DataFont(String.join("\n",
    "xx xx",
    "xx xx",
    "xx xx",
    "xx xx",
    "     ",
    "     ",
    "     ",
    "     ")));

    FontDisorient2017.put('>', new DataFont(String.join("\n",
    "xx   ",
    "xxx  ",
    " xxx ",
    "  xxx",
    "  xxx",
    " xxx ",
    "xxx  ",
    "xx   ")));

    FontDisorient2017.put('<', new DataFont(String.join("\n",
    "   xx",
    "  xxx",
    " xxx ",
    "xxx  ",
    "xxx  ",
    " xxx ",
    "  xxx",
    "   xx")));

    FontDisorient2017.put('?', new DataFont(String.join("\n",
    " xxxxxxxx ",
    "xxxxxxxxxx",
    "xx      xx",
    "    xxxxxx",
    "    xxxxx ",
    "          ",
    "    xx    ",
    "    xx    ")));

    FontDisorient2017.put(',', new DataFont(String.join("\n",
    "  ",
    "  ",
    "  ",
    "  ",
    "xx",
    "xx",
    "xx",
    "xx")));

    FontDisorient2017.put('.', new DataFont(String.join("\n",
    "  ",
    "  ",
    "  ",
    "  ",
    "  ",
    "  ",
    "xx",
    "xx")));

    FontDisorient2017.put('/', new DataFont(String.join("\n",
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
