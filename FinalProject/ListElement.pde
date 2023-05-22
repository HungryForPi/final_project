class ListElement {
  // fields
  public int xCor;
  public int yCor;
  public int value; // should be positive
  public int mode; // "show number" = 0, "show bar" = 1
  
  // constructor
  public ListElement(int x, int y, int val, int m) {
    xCor = x;
    yCor = y;
    value = val;
    mode = m;
  }
  
  public color valToColor() {
    return color((int)(256 * 2 * Math.atan(value) / 3.14159)); // converts `value' to a number between 0 and 255; grayscale for now
  }
  
  public void move(int destX, int destY) {
    xCor = destX;
    yCor = destY;
  }
}
