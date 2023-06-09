class InsertionSort extends Sorter {  
  public int curPos = 1;
  public int searcher = 0;
  public int swapper = 1;
  
  public boolean searchMode = true;
  
  public InsertionSort(int len) {
    super(len);
  }
  
  /*
  two modes: search and replace
  search mode:
    looks for where the current thing should go
  replace mode:
    does the swapping thingy
  */
  public void step_search() {
    if (sorted) return;
    if (searcher >= 0 && elements[searcher].value <= elements[curPos].value) {
      searchMode = false;
      return;// stop at the first place where the array is less than the current val (so after searcher)
    }
    if (searcher < 0) {
      searchMode = false;
      return;
    } // if you're at 0 and haven't triggered the previous one,
    // you're at the beginning, which is where the current val belongs
    
    // if you're here, you haven't found a reason to stop.
    searcher--;
  }
  
  public void step_replace() {
    // swap
    if (swapper - 1 > searcher) {
      int temp = elements[swapper].value;
      elements[swapper].value = elements[swapper - 1].value;
      elements[swapper - 1].value = temp;
    }
    else {
      searcher = curPos;
      curPos++;
      swapper = curPos;
      if (curPos >= elements.length) sorted = true;
      searchMode = true;
      return;
    }
    swapper--;
  }
}
