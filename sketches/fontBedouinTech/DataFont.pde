class DataFont {
  //private byte[] data;
  private char[] data;
  private int width;
  private int height = 8;

  DataFont(String s) {
    // Check the formatting is correct
    if (!isValidDataFont(s)) {
      println("Invalid Datafont:");
      println(s);
      exit();
    }

    // Init DataFont from string
    initDataFont(s);
  }

  char get(int x, int y) {
    int i = x + y * width;

    // Return false if outside array
    if (i < 0 || i > height * width - 1) {
      return ' ';
    }

    // Return pixel status
    return data[i];
  }

  int getWidth() {
    return width;
  }

  int getHeight() {
    return height;
  }

  private void initDataFont(String s) {
    String rows[] = s.split("\r?\n|\r");
    width = rows[0].length();
    data = new char[width * height];

    for (int y = 0; y < height; y++) {
      String row = rows[y];

      for (int x = 0; x < width; x++) {
        char c = row.charAt(x);
        data[x + y * width] = c;
      }
    }
  }

  private boolean isValidDataFont(String s) {
    String rows[] = s.split("\r?\n|\r");

    // Check for 8 rows
    if (rows.length != height) {
      return false;
    }

    // Check all rows are same length
    int w = rows[0].length();
    for (int i = 1; i < height; i++) {
      if (rows[i].length() != w) {
        return false;
      }
    }

    return true;
  }
}