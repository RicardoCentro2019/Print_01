int total = 200;
float r;

void setup() {
  size(640, 640);
  r = width / 2 - 16 ;
}

PVector getVector(int index) {
  float angle = map(index % total, 0, total, 0, TWO_PI);
  PVector v = PVector.fromAngle(angle + PI);
  v.mult(r);
  return v;
}

void draw() {
  background(0);
  //float delta = TWO_PI / total;

  int factor = 2; 

  translate(width / 2, height / 2);
  stroke(255);
  noFill();
  circle(0, 0, r * 2);
  for (int i = 0; i < total; i++) {
    PVector v = getVector(i);

    fill(255);
    circle(v.x, v.y, 16);
  }
  for (int i = 0; i < total; i++) {
    PVector a = getVector (i);
    PVector b = getVector(i * factor);
    line(a.x, a.y, b.x, b.y);    
    
  }
} 
