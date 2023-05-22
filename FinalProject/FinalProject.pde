Sorter s = new Sorter();

void setup() {
  
}

void draw() {

}

void keyPressed() {
  if (key == 'T') {
    for (ListElement el : s.list) el.mode = 1 - el.mode;
  }
}
