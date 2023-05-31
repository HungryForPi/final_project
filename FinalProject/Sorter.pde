import java.util.ArrayList;
import java.util.Collections;

Artist a_sorter = new Artist();

class Sorter {
  ListElement[] list;
  
  public Sorter(int n) {
    list = generate(n);
  }
  
  /* generate array of listelements with random values
  */
  private ListElement[] generate(int n) {
    ArrayList<Integer> nums = new ArrayList<Integer>();
    for (int i = 0; i < n; i++) {
      nums.add(i);
    }
    Collections.shuffle(nums);
    
    ListElement[] elems = new ListElement[n];
    for (int i = 0; i < n; i++) {
      elems[i] = new ListElement(new PVector(width/n * (i + 0.5), height/2), nums.get(i)); // don't know PVector coordinates yet
    }
    return elems;
  }

  public boolean step_bubbleSort(int i, int j) {
    boolean swapped = false;
    if (list[i].value > list[j].value) {
      int temp = list[i].value;
      list[i].value = list[j].value;
      list[j].value = temp;
      swapped = true;
    }
    return swapped;
  }
}
