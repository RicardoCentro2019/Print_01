float rotation = 0.0;

void setup () {
  size(500, 500);
}

void draw () {

  background(255);

  translate(250, 250);

  float separacion = 10;
  float ringLength = 50; 

  for (int i = 0; i < 3; i++) { 
    float inner = (i * (separacion + ringLength)) + separacion;
    float outer = (i + 1) * (separacion + ringLength);

    pushMatrix();
    if (i % 2 == 0) {
      rotate(rotation);
    } else {
      rotate(-rotation);
    }
    
    ring(100, inner, outer);
    popMatrix();
  }
  
  rotation += 0.004;
}

void ring(int n, float innerRadius, float outerRadius) {
  float angleSeparation = 360.0 / float(n); 

  for (int i = 0; i < n; i++) {
    float angle = i * angleSeparation; 

    pushMatrix();
    rotate(radians(angle));
    noFill();
    ellipse(innerRadius / 2, 0, outerRadius / 2, 500);
    popMatrix();
  }
}
