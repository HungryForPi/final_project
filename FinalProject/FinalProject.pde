final int LEN = 13;
int mode = 0; // 0 for bubble, 1 for insertion, 2 for selection

BubbleSort bubble = new BubbleSort(LEN);
InsertionSort insert = new InsertionSort(LEN);
SelectionSort select = new SelectionSort(LEN);

void setup() {
  size(1000, 700);
  
  System.out.println(select.sorted);
  
  background(200);
  textAlign(CENTER);
  textSize(40);
  
  for (int i = 0; i < LEN; i++) {
    drawarr(bubble, i);
  }
}

void draw() {
  background(75);
  for (int i = 0; i < LEN; i++) {
    if (mode == 0) {
      fill(255);
      text("BUBBLESORT", 500, 100);
      
      if (i == bubble.leftElement || i == bubble.rightElement) {
        stroke(255);
        strokeWeight(4);
      }
      
      if (bubble.sorted) {
        fill(255);
        text("sorted!", 500, 200);
      }
      else {
        fill(255);
        text("trying to swap " + bubble.elements[bubble.leftElement].value + " and " + bubble.elements[bubble.rightElement].value, 500, 200);
      }
      
      drawarr(bubble, i);
    }
    
    if (mode == 1) {
      fill(255);
      text("INSERTIONSORT", 500, 100);
      
      if (i == insert.curPos) {
        stroke(#34ebde);
        strokeWeight(4);
      } 
      if ((i == insert.searcher && insert.searchMode) || (i == insert.swapper && !insert.searchMode)) {
        stroke(255);
        strokeWeight(4);
      }
      if (insert.searchMode && !insert.sorted) {
        fill(255);
        text("searching for where to insert " + insert.elements[insert.curPos].value, 500, 200);
      }
      if (!insert.searchMode && !insert.sorted) {
        fill(255);
        text("inserting " + insert.elements[insert.swapper].value, 500, 200);
      }
      if (insert.sorted) {
        fill(255);
        text("sorted!", 500, 200);
      }
      drawarr(insert, i);
    }
    
    if (mode == 2) {
      fill(255);
      text("SELECTIONSORT", 500, 100);
      if (i == select.searcher) {
        stroke(255);
        strokeWeight(4);
      }
      
      if (i == select.curPos) {
        stroke(#34ebde);
        strokeWeight(4);
      }
      
      if (i == select.minPos) {
        stroke(#f5b3f1);
        strokeWeight(4);
      }
      
      drawarr(select, i);
      
      if (select.sorted) {
        fill(255);
        text("sorted!", 500, 200);
      }
      else {
        fill(255);
        text("swapping " + select.elements[select.curPos].value + " with the current minimum of " + select.elements[select.minPos].value, 500, 200);
      }
    }
    
    stroke(0);
    strokeWeight(1);
  }
}

void drawarr(Sorter s, int i) {
  if (s.sorted) {
    strokeWeight(4);
    stroke(#bf3ffc);
  }
  
  fill(s.elements[i].valToColor(0, LEN - 1));
  ellipse(s.elements[i].pos.x, s.elements[i].pos.y, width/(3 * LEN/2), width/(3 * LEN/2));
  fill(0);
  text(s.elements[i].value, s.elements[i].pos.x, s.elements[i].pos.y + 13);
}

void reset() {
  bubble = new BubbleSort(LEN);
  insert = new InsertionSort(LEN);
  select = new SelectionSort(LEN);
}

void keyPressed() {
  if (key == 's' || key == 'S') {
    if (mode == 0) bubble.step();
    else if (mode == 1) {
      if (insert.searchMode) insert.step_search();
      else insert.step_replace();
    }
    else if (mode == 2) {
      select.step();
    }
  }
  
  if (key == 'r' || key == 'R') {
    reset();
  }
  
  if (key == 'm' || key == 'M') {
    mode = (mode + 1) % 3;
  }
}
