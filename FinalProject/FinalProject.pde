BubbleSort s;
final int LEN = 13;
int mode = 0; // determines whether the size of the element bubbles are proportional

void setup() {
  size(1000, 700);
  s = new BubbleSort(LEN);
  
  background(200);
  textAlign(CENTER);
  textSize(40);
  
  for (int i = 0; i < LEN; i++) {
    fill(255);
    ellipse(s.elements[i].pos.x, s.elements[i].pos.y, width/(3 * LEN/2), width/(3 * LEN/2));
    fill(0);
    text(s.elements[i].value, s.elements[i].pos.x, s.elements[i].pos.y + 13);
  }
}

void draw() {
  background(200);
  for (int i = 0; i < LEN; i++) {
    if (i == s.leftElement || i == s.rightElement) {
      stroke(255);
      strokeWeight(4);
    }
    if (s.sorted) {
      strokeWeight(4);
      stroke(#bf3ffc);
    }
    fill(s.elements[i].valToColor(0, LEN - 1));
    ellipse(s.elements[i].pos.x, s.elements[i].pos.y, width/(3 * LEN/2), width/(3 * LEN/2));
    fill(0);
    text(s.elements[i].value, s.elements[i].pos.x, s.elements[i].pos.y + 13);
    
    stroke(0);
    strokeWeight(1);
  }
}

void keyPressed() {
  if (key == 'b' || key == 'B') {
    s.step();
  }
  
  if (key == 'r' || key == 'R') {
    s.reset(LEN);
  }
}
