class ListElement {
  // fields
  public PVector pos;
  public int value; // should be positive
  
  // constructor
  public ListElement(PVector p, int val) {
    pos = p;
    value = val;
  }
  
  public ListElement(int val) {
    value = val;
  }
  
  public color valToColor() {
    return color((int)(256 * 2 * Math.atan(value) / 3.14159)); // converts `value' to a number between 0 and 255; grayscale for now
  }
  
  public void move(int destX, int destY) {
    pos.x = destX;
    pos.y = destY;
  }
}
