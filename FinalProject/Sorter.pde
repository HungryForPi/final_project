import java.util.ArrayList;
import java.util.Collections;

class Sorter {
  public ListElement[] elements;
  public boolean sorted = false;

  public Sorter(int len) {
    elements = generate(len);
  }
  
  /*
  generate array of listelements with random values
  */
  private ListElement[] generate(int n) {
    ArrayList<Integer> nums = new ArrayList<Integer>();
    for (int i = 0; i < n; i++) {
      nums.add(i);
    }
    Collections.shuffle(nums);
    
    ListElement[] elems = new ListElement[n];
    for (int i = 0; i < n; i++) {
      elems[i] = new ListElement(new PVector(1000/n * (i + 0.5), 350), nums.get(i));
    }
    return elems;
  }
}
