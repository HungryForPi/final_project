// has methods for drawing things; is basically just a container for methods for now
class Artist {
  void drawElement(ListElement elem) {
    fill(255);
    ellipse(elem.pos.x, elem.pos.y, 70, 70);
    fill(0);
    text(elem.value, elem.pos.x, elem.pos.y + 12);
  }
}
