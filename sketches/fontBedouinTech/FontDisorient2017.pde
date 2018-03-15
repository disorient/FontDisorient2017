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
    //rectMode(CENTER);
    float radius = pixelWidth * 0.425 * 2;
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
              translate(x * pixelWidth, 0);
              ellipse(0, 0, radius, radius);
              popMatrix();
            } else if (type == '1') {
              pushMatrix();
              translate(x * pixelWidth, 0);
              pushStyle();
              strokeWeight(pixelWidth * 0.425 * 2);
              stroke(0);
              line(0, 0, 0, pixelWidth);
              popStyle();
              popMatrix();
            } else if (type == '2') {
              pushMatrix();
              translate(x * pixelWidth, 0);
              pushStyle();
              strokeWeight(pixelWidth * 0.425 * 2);
              stroke(0);
              line(0, 0, pixelWidth, 0);
              popStyle();
              popMatrix();
            } else if (type == '3') {
              pushMatrix();
              noStroke();
              translate(x * pixelWidth, 0);
              pushStyle();
              strokeWeight(pixelWidth * 0.425 * 2);
              stroke(0);
              line(0, 0, 0, pixelWidth);
              line(0, pixelWidth, pixelWidth, pixelWidth);
              popStyle();
              popMatrix();
            } else if (type == '4') {
              pushMatrix();
              noStroke();
              translate(x * pixelWidth, 0);
              pushStyle();
              strokeWeight(pixelWidth * 0.425 * 2);
              stroke(0);
              line(0, 0, 0, pixelWidth);
              line(0, pixelWidth, -pixelWidth, pixelWidth);
              popStyle();
              popMatrix();
            } else if (type == '5') {
              pushMatrix();
              noStroke();
              translate(x * pixelWidth, 0);
              pushStyle();
              strokeWeight(pixelWidth * 0.425 * 2);
              stroke(0);
              line(0, 0, 0, pixelWidth);
              line(0, 0, pixelWidth, 0);
              popStyle();
              popMatrix();
            } else if (type == '6') {
              pushMatrix();
              noStroke();
              translate(x * pixelWidth, 0);
              pushStyle();
              strokeWeight(pixelWidth * 0.425 * 2);
              stroke(0);
              line(0, 0, pixelWidth, 0);
              line(pixelWidth, 0, pixelWidth, pixelWidth);
              popStyle();
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

  ArrayList<ShapeType> getShapes(char c) {
    ArrayList<ShapeType> list = new ArrayList<ShapeType>();
    String types = "0123456";

    if (fontDisorient2017.containsKey(c)) {
      DataFont f = fontDisorient2017.get(c);
      int w = f.getWidth();

      for (int y = 0; y < 8; y++) {
        for (int x = 0; x < w; x++) {
          char type = f.get(x, y);
          if (types.indexOf(type) >= 0) {
            list.add(new ShapeType(type, x, y));
          }
        }
      }
    }

    return list;
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
      "0042-002- ", 
      "1$$0002-2-", 
      "!0      01", 
      "5%02-02-1!", 
      "%12-2-00!4", 
      "0!      $$", 
      "0002-6^2-0", 
      "00002-^2- ")));

    fontDisorient2017.put('c', new DataFont(String.join("\n", 
      " 042-006^0", 
      "1$$002-0^0", 
      "!0        ", 
      "2-        ", 
      "30        ", 
      "##        ", 
      "015^6^32-1", 
      " !^2-^##0!")));

    fontDisorient2017.put('d', new DataFont(String.join("\n", 
      "0042-002- ", 
      "1$$0002-2-", 
      "!0      01", 
      "5%      1!", 
      "%1      !4", 
      "0!      $$", 
      "0302-6^2-0", 
      "0##02-^2- ")));

    fontDisorient2017.put('e', new DataFont(String.join("\n", 
      " 05%2-2-1 ", 
      "2-%00000!0", 
      "04      30", 
      "$$005%2-##", 
      "302-%00000", 
      "##        ", 
      "001110410 ", 
      " 0!!!$$!0 ")));

    fontDisorient2017.put('f', new DataFont(String.join("\n", 
      " 042-002-0", 
      "1$$0002-00", 
      "!0        ", 
      "5%02-02-0 ", 
      "%12-2-000 ", 
      "0!        ", 
      "00        ", 
      "00        ")));

    fontDisorient2017.put('g', new DataFont(String.join("\n", 
      " 05%2-2-10", 
      "2-%00000!0", 
      "04        ", 
      "$$  5%2-2-", 
      "30  %00004", 
      "##      $$", 
      "0010104101", 
      " 0!0!$$!0!")));

    fontDisorient2017.put('h', new DataFont(String.join("\n", 
      "00      2-", 
      "10      2-", 
      "!0      01", 
      "5%42-0001!", 
      "%$$0002-!4", 
      "00      $$", 
      "00      2-", 
      "00      2-")));

    fontDisorient2017.put('i', new DataFont(String.join("\n", 
      "00", 
      "2-", 
      "  ", 
      "10", 
      "!0", 
      "00", 
      "30", 
      "##")));

    fontDisorient2017.put('j', new DataFont(String.join("\n", 
      "        10", 
      "        !0", 
      "          ", 
      "        6^", 
      "00      0^", 
      "10      01", 
      "!132-032-!", 
      " !##00##0 ")));

    fontDisorient2017.put('k', new DataFont(String.join("\n", 
      "2-      2-", 
      "00      00", 
      "5%      2-", 
      "%06^2-004 ", 
      "6^0^000$$ ", 
      "0^      2-", 
      "2-      30", 
      "00      ##")));

    fontDisorient2017.put('l', new DataFont(String.join("\n", 
      "2-        ", 
      "2-        ", 
      "01        ", 
      "3!        ", 
      "##        ", 
      "10        ", 
      "!6^0002-2-", 
      " 0^2-002-0")));

    fontDisorient2017.put('m', new DataFont(String.join("\n", 
      "00002-6^0 ", 
      "10002-0^00", 
      "!0  10  01", 
      "5%  !1  1!", 
      "%0  1!  !4", 
      "00  !0  $$", 
      "00  01  2-", 
      "2-  0!  2-")));

    fontDisorient2017.put('n', new DataFont(String.join("\n", 
      "006^5%003 ", 
      "02-^%2-0##", 
      "11      00", 
      "!!      00", 
      "10      00", 
      "!0      00", 
      "04      00", 
      "$$      00")));

    fontDisorient2017.put('o', new DataFont(String.join("\n", 
      " 2-05%301 ", 
      "02-0%0##!0", 
      "2-      6^", 
      "6^      0^", 
      "0^      00", 
      "10      01", 
      "!132-032-!", 
      " !##00##0 ")));

    fontDisorient2017.put('p', new DataFont(String.join("\n", 
      "0042-002- ", 
      "1$$0002-2-", 
      "!0      01", 
      "5%      1!", 
      "%102-02-!0", 
      "0!2-2-000 ", 
      "00        ", 
      "2-        ")));

    fontDisorient2017.put('q', new DataFont(String.join("\n", 
      " 2-32-000 ", 
      "02-##2-000", 
      "5%      10", 
      "%1      !4", 
      "0!      $$", 
      "10     001", 
      "!002-2-00!", 
      " 2-02-0   ")));

    fontDisorient2017.put('r', new DataFont(String.join("\n", 
      "0042-002- ", 
      "1$$0002-2-", 
      "!0      01", 
      "5%      1!", 
      "%102-02-! ", 
      "0!2-2-000 ", 
      "00     02-", 
      "00      2-")));

    fontDisorient2017.put('s', new DataFont(String.join("\n", 
      " 05%2-3010", 
      "2-%000##!0", 
      "04        ", 
      "$$00002-0 ", 
      " 02-2-0000", 
      "        2-", 
      "001110415%", 
      "00!!!$$!% ")));

    fontDisorient2017.put('t', new DataFont(String.join("\n", 
      "2-005%2-2-", 
      "002-%00000", 
      "    01    ", 
      "    0!    ", 
      "    2-    ", 
      "    6^    ", 
      "    1^    ", 
      "    !0    ")));

    fontDisorient2017.put('u', new DataFont(String.join("\n", 
      "2-      10", 
      "2-      !0", 
      "2-      6^", 
      "6^      0^", 
      "0^      00", 
      "10      01", 
      "!132-032-!", 
      " !##00##0 ")));

    fontDisorient2017.put('v', new DataFont(String.join("\n", 
      "00      10", 
      "10      !1", 
      "!0      0!", 
      "00      30", 
      "30      ##", 
      "##     02-", 
      "016^2-2-0 ", 
      "0!0^2-00  ")));

    fontDisorient2017.put('w', new DataFont(String.join("\n", 
      "2-  10  2-", 
      "2-  !0  00", 
      "5%  01  00", 
      "%1  1!  04", 
      "1!  !1  $$", 
      "!0  0!  01", 
      "6^00302-0!", 
      "0^2-##2-0 ")));

    fontDisorient2017.put('x', new DataFont(String.join("\n", 
      "00      30", 
      "10      ##", 
      "!0      00", 
      " 042-0110 ", 
      " $$000!!0 ", 
      "00      00", 
      "00      00", 
      "00      2-")));

    fontDisorient2017.put('y', new DataFont(String.join("\n", 
      "00      2-", 
      "10      2-", 
      "!0      01", 
      "0042-0001!", 
      " $$0002-! ", 
      "    2-    ", 
      "    10    ", 
      "    !0    ")));

    fontDisorient2017.put('z', new DataFont(String.join("\n", 
      "0042-002-0", 
      "0$$0002-2-", 
      "        2-", 
      " 0132-005%", 
      "00!##02-% ", 
      "2-        ", 
      "2-2-0005%0", 
      "02-002-%00")));

    // Use lowercase set for uppercase set
    for (char c : "abcdefghijklmnopqrstuvwxyz".toCharArray()) {
      char u = Character.toUpperCase(c);
      fontDisorient2017.put(u, fontDisorient2017.get(c));
    }

    fontDisorient2017.put('1', new DataFont(String.join("\n", 
      "6^0 ", 
      "0^00", 
      "  01", 
      "  1!", 
      "  !4", 
      "  $$", 
      "  2-", 
      "  2-")));

    fontDisorient2017.put('2', new DataFont(String.join("\n", 
      "0042-002- ", 
      "0$$0002-2-", 
      "        2-", 
      " 0132-005%", 
      "00!##02-% ", 
      "2-        ", 
      "2-2-0005%0", 
      "02-002-%00")));

    fontDisorient2017.put('3', new DataFont(String.join("\n", 
      "0042-002- ", 
      "0$$0002-2-", 
      "        01", 
      " 102-02-1!", 
      " !2-2-00!4", 
      "        $$", 
      "0002-6^2-0", 
      "00002-^2- ")));

    fontDisorient2017.put('4', new DataFont(String.join("\n", 
      "2-    2-  ", 
      "00    2-  ", 
      "10    2-  ", 
      "!0    00  ", 
      "0042-00010", 
      " $$0002-!0", 
      "      00  ", 
      "      00  ")));

    fontDisorient2017.put('5', new DataFont(String.join("\n", 
      "2-5%2-3010", 
      "2-%000##!0", 
      "04        ", 
      "$$00002-0 ", 
      "2-2-2-0000", 
      "        2-", 
      "001110415%", 
      "00!!!$$!% ")));

    fontDisorient2017.put('6', new DataFont(String.join("\n", 
      " 0106^100 ", 
      "2-!00^!00 ", 
      "5%        ", 
      "%1002-2-1 ", 
      "1!2-02-0!1", 
      "!0      0!", 
      "2-2-002-2-", 
      " 2-00002- ")));

    fontDisorient2017.put('7', new DataFont(String.join("\n", 
      "02-002-30 ", 
      "2-2-000##1", 
      "        0!", 
      "        6^", 
      "        1^", 
      "        !0", 
      "        2-", 
      "        2-")));

    fontDisorient2017.put('8', new DataFont(String.join("\n", 
      " 05%2-2-0 ", 
      "2-%02-002-", 
      "04      04", 
      "$$005%11$$", 
      "302-%0!!30", 
      "##      ##", 
      "0011104110", 
      " 0!!!$$!! ")));

    fontDisorient2017.put('9', new DataFont(String.join("\n", 
      " 042-002- ", 
      "0$$0002-2-", 
      "2-      2-", 
      "00132-005%", 
      " 0!##02-%0", 
      "        2-", 
      " 02-0005%0", 
      " 2-002-%0 ")));

    fontDisorient2017.put('0', new DataFont(String.join("\n", 
      " 2-05%301 ", 
      "02-0%0##!0", 
      "2-      6^", 
      "6^      0^", 
      "0^      00", 
      "10      01", 
      "!132-032-!", 
      " !##00##0 ")));

    fontDisorient2017.put('~', new DataFont(String.join("\n", 
      "2-00", 
      "002-", 
      "    ", 
      "    ", 
      "    ", 
      "    ", 
      "    ", 
      "    ")));

    fontDisorient2017.put('`', new DataFont(String.join("\n", 
      "00 ", 
      "2-0", 
      " 2-", 
      "   ", 
      "   ", 
      "   ", 
      "   ", 
      "   ")));

    fontDisorient2017.put('!', new DataFont(String.join("\n", 
      "6^", 
      "0^", 
      "00", 
      "01", 
      "0!", 
      "  ", 
      "2-", 
      "00")));

    fontDisorient2017.put('@', new DataFont(String.join("\n", 
      " 042-006^ ", 
      "1$$002-0^0", 
      "!0      2-", 
      "2- 5%1116^", 
      "30 %0!!!0^", 
      "## 00   2-", 
      "015%6^32-0", 
      " !%2-^##0 ")));

    fontDisorient2017.put('#', new DataFont(String.join("\n", 
      "  00  2-  ", 
      "2-00002-00", 
      "2-2-2-0000", 
      "  2-  30  ", 
      "  2-  ##  ", 
      "00002-2-2-", 
      "002-00002-", 
      "  2-  00  ")));

    fontDisorient2017.put('$', new DataFont(String.join("\n", 
      " 415%10011", 
      "$$!%0!00!!", 
      "2-  00    ", 
      "00002-2-0 ", 
      " 02-2-005%", 
      "    2-  %0", 
      "016^00042-", 
      "0!0^2-$$0 ")));

    fontDisorient2017.put('%', new DataFont(String.join("\n", 
      "06^    10 ", 
      "10^   4!0 ", 
      "!2-  $$0  ", 
      "    02-   ", 
      "   300    ", 
      "  1##  5%1", 
      " 1!0   %0!", 
      " !0    020")));

    fontDisorient2017.put('^', new DataFont(String.join("\n", 
      "  00  ", 
      "302-2-", 
      "##  20", 
      "      ", 
      "      ", 
      "      ", 
      "      ", 
      "      ")));

    fontDisorient2017.put('&', new DataFont(String.join("\n", 
      " 042-00   ", 
      "1$$0002-  ", 
      "!0    2-  ", 
      " 05%2-0 11", 
      " 1%2-02-!!", 
      "0!    000 ", 
      "00006^102-", 
      " 0000^! 2-")));

    fontDisorient2017.put('*', new DataFont(String.join("\n", 
      "00  6^  10", 
      "2-0 0^ 0!0", 
      " 2-42-010 ", 
      "  $$2-0!  ", 
      "  300004  ", 
      " 1$$2-$$0 ", 
      "1!0 2- 2-0", 
      "!0  00  2-")));

    fontDisorient2017.put('(', new DataFont(String.join("\n", 
      "  10", 
      " 0!0", 
      "010 ", 
      "0!  ", 
      "04  ", 
      "$$0 ", 
      " 2-0", 
      "  2-")));

    fontDisorient2017.put(')', new DataFont(String.join("\n", 
      "00  ", 
      "2-0 ", 
      " 2-4", 
      "  $$", 
      "  30", 
      " 1$$", 
      "1!0 ", 
      "!0  ")));

    fontDisorient2017.put('_', new DataFont(String.join("\n", 
      "          ", 
      "          ", 
      "          ", 
      "          ", 
      "          ", 
      "          ", 
      "16^0002-2-", 
      "!0^2-002-0")));

    fontDisorient2017.put('-', new DataFont(String.join("\n", 
      "          ", 
      "          ", 
      "          ", 
      "2-2-0005%1", 
      "02-002-%0!", 
      "          ", 
      "          ", 
      "          ")));

    fontDisorient2017.put('+', new DataFont(String.join("\n", 
      "    00    ", 
      "    00    ", 
      "    2-    ", 
      "2-00002-00", 
      "2-2-2-0000", 
      "    30    ", 
      "    $$    ", 
      "    2-    ")));

    fontDisorient2017.put('=', new DataFont(String.join("\n", 
      "          ", 
      "001110415%", 
      "00!!!$$!%0", 
      "          ", 
      "          ", 
      "2-5%2-3010", 
      "2-%000##!0", 
      "          ")));

    fontDisorient2017.put('[', new DataFont(String.join("\n", 
      "0040", 
      "1$$0", 
      "!0  ", 
      "5%  ", 
      "%1  ", 
      "0!  ", 
      "036^", 
      "0##^")));

    fontDisorient2017.put('{', new DataFont(String.join("\n", 
      "  04", 
      " 1$$", 
      " !0 ", 
      "01  ", 
      "0!  ", 
      " 00 ", 
      " 030", 
      "  ##")));

    fontDisorient2017.put('}', new DataFont(String.join("\n", 
      "2-  ", 
      "02- ", 
      " 01 ", 
      "  !1", 
      "  4!", 
      " $$ ", 
      "2-0 ", 
      "2-  ")));

    fontDisorient2017.put(']', new DataFont(String.join("\n", 
      "02-0", 
      "2-2-", 
      "  01", 
      "  1!", 
      "  !4", 
      "  $$", 
      "12-0", 
      "!2-0")));

    fontDisorient2017.put('|', new DataFont(String.join("\n", 
      "5%", 
      "%0", 
      "01", 
      "1!", 
      "!1", 
      "0!", 
      "2-", 
      "2-")));

    fontDisorient2017.put('\\', new DataFont(String.join("\n", 
      "00      ", 
      "2-0     ", 
      " 6^1    ", 
      "  ^!0   ", 
      "   004  ", 
      "    $$0 ", 
      "     2-0", 
      "      2-")));

    fontDisorient2017.put(':', new DataFont(String.join("\n", 
      "  ", 
      "5%", 
      "%0", 
      "  ", 
      "  ", 
      "00", 
      "2-", 
      "  ")));

    fontDisorient2017.put(';', new DataFont(String.join("\n", 
      "  ", 
      "2-", 
      "2-", 
      "  ", 
      "  ", 
      "2-", 
      "04", 
      "$$")));

    fontDisorient2017.put('\'', new DataFont(String.join("\n", 
      "5%", 
      "%0", 
      "04", 
      "$$", 
      "  ", 
      "  ", 
      "  ", 
      "  ")));

    fontDisorient2017.put('"', new DataFont(String.join("\n", 
      "00 00", 
      "2- 00", 
      "2- 00", 
      "2- 00", 
      "     ", 
      "     ", 
      "     ", 
      "     ")));

    fontDisorient2017.put('>', new DataFont(String.join("\n", 
      "6^   ", 
      "0^0  ", 
      " 2-0 ", 
      "  010", 
      "  0!0", 
      " 6^0 ", 
      "2-^  ", 
      "00   ")));

    fontDisorient2017.put('<', new DataFont(String.join("\n", 
      "   10", 
      "  4!0", 
      " $$0 ", 
      "12-  ", 
      "!20  ", 
      " 030 ", 
      "  ##0", 
      "   2-")));

    fontDisorient2017.put('?', new DataFont(String.join("\n", 
      " 042-002- ", 
      "0$$0002-2-", 
      "2-      20", 
      "    2-005%", 
      "    002-% ", 
      "          ", 
      "    00    ", 
      "    00    ")));

    fontDisorient2017.put(',', new DataFont(String.join("\n", 
      "  ", 
      "  ", 
      "  ", 
      "  ", 
      "10", 
      "!0", 
      "2-", 
      "00")));

    fontDisorient2017.put('.', new DataFont(String.join("\n", 
      "  ", 
      "  ", 
      "  ", 
      "  ", 
      "  ", 
      "  ", 
      "5%", 
      "%0")));

    fontDisorient2017.put('/', new DataFont(String.join("\n", 
      "      10", 
      "     4!0", 
      "    $$0 ", 
      "   02-  ", 
      "  300   ", 
      " 1##    ", 
      "1!0     ", 
      "!0      ")));
  }
}