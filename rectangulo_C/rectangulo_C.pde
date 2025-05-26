void setup() {
  size(64, 64);
}

void draw() {
  background(255);
  strokeWeight(4);
  fill(220);
  
  pushMatrix();
  
  float r = random(8, 20);
  float x = random(r, width - r);
  float y = random(r, height - r);
  
  translate(x, y);
  rotate(random(-0.3, 0.3));
  stroke(100);
  
  triangle(0, 0, r, 0, 0, r); // ángulo recto arriba izquierda
  popMatrix();
  
  saveFrame("data/tri_rectD_###.png");
  if (frameCount == 100) exit();
}
