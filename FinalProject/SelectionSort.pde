class SelectionSort extends Sorter {
  int curPos = 0;
  int searcher = 0;
  int minPos = 0;
  int len = elements.length;
  
  public SelectionSort(int len) {
    super(len);
  }
  
  private void swap(ListElement[] l, int i, int j) {
    int temp = l[i].value;
    l[i].value = l[j].value;
    l[j].value = temp;
  }
  
  public void step() {
    if (sorted) return;
    if (searcher == len) {
      swap(elements, curPos, minPos);
      if (curPos + 1 >= len) {
        sorted = true;
        return;
      }
      curPos++;
      searcher = curPos;
      minPos = curPos;
    }
    if (elements[searcher].value < elements[minPos].value) minPos = searcher;
    searcher++;
    //for (int i = 0; i < len; i++) System.out.print(elements[i].value + " ");
    //System.out.println();
  }
}
