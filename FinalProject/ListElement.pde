class ListElement {
  // fields
  public PVector pos;
  public int value; // should be positive
  
  // constructors
  public ListElement(PVector p, int val) {
    pos = p;
    value = val;
  }
  
  public color valToColor(int min, int max) {
    float minDiff = (value - min)/(float)(max - min);
    float maxDiff = (max - value)/(float)(max - min);
    //System.out.println(255 * minDiff + " " + 255 * maxDiff + " " + (minDiff + maxDiff));
    return color(255 * minDiff, 255 * maxDiff, 0);
  }
}
