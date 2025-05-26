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
  
  // Ángulo obtuso arriba, punta hacia abajo
  triangle(-r, -r * 0.4, r, -r * 0.4, 0, r);
  
  popMatrix();
  
  saveFrame("data/tri_obtuso_###.png");
  if (frameCount == 100) exit();
}
