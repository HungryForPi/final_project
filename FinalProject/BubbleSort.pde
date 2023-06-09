class BubbleSort extends Sorter {
  // keep track of which two things are being swapped right now
  public int leftElement = 0;
  public int rightElement = 1;
  public boolean swapped = false;
  
  public BubbleSort(int len) {
    super(len);
  }
  
  /*
  returns true if there was a swap made in this step
  */
  public boolean step() {
    boolean toReturn = false;
    if (elements[leftElement].value > elements[rightElement].value && !sorted) {
      toReturn = true;
      swapped = true;
      int temp = elements[leftElement].value;
      elements[leftElement].value = elements[rightElement].value;
      elements[rightElement].value = temp;
    }
    if (rightElement < elements.length - 1) {
      leftElement++; rightElement++;
    }
    else {
      leftElement = 0;
      rightElement = 1;
      if (!swapped) sorted = true;
      swapped = false;
    }
  
    // DEBUG
    //for (int i = 0; i < elements.length; i++) {
    //  print(elements[i].value + " "); 
    //}
    //System.out.println();
    //System.out.println(leftElement + " " + rightElement);
    //if (sorted) System.out.println("sorted!");
    
    return toReturn;
  }
}
