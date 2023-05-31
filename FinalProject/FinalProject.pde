Sorter s;
Artist a;
int LEN = 7;
int mode = 0; // determines whether the size of the element bubbles are proportional

void setup() {
  size(1000, 700);
  s = new Sorter(LEN);
  a = new Artist();
  
  background(200);
  textAlign(CENTER);
  textSize(40);
  noLoop();
}

void draw() {
  background(200);
  for (int i = 0; i < LEN; i++) {
    a.drawElement(s.list[i]);
  }
}

void keyPressed() {
  if (key == 'b') {
    bubbleSort();
  }
}

public void bubbleSort() {
    for (int i = 0; i < LEN; i++) {
      for (int j = 0; j < LEN - 1; j++) {
        delay(500);
        s.step_bubbleSort(j, j + 1);
        redraw();
      }
    }
  }
