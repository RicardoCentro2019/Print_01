void setup () {
  size(600, 600);
}

void draw () {
  background (255);
  diagonals(400, 290);
  diagonals(260, 262);
  diagonals(250, 240);
}
void diagonals(int x, int y) {
  line(x, y, x + 420, y - 140);
  line(x + 100, y, x + 310, y - 240);
  line(x + 220, y, x + 140, y - 140);
  line(x - 390, y, x + 239, y - 128);
  line(x- 500, y, x - 400, y + 300);
}
