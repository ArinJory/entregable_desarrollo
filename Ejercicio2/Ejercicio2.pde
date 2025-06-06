void setup()
{
  size(128, 128);
}

void draw()
{
  background(255);
  strokeWeight(4);
  
  //Valores aleatorios
  float r = random(24, 64); //RADIO
  float x = random(r, width - r);
  float y = random(r, height - r);
  
  //Color del borde RGB (valores inferior a 100, colores oscuros)
  //random(N) ... random(0, N)
  stroke(random(100), random(100), random(100));
  
  circle(x, y, (r*2));
  saveFrame("data/circle###.png"); //### => 001, 002 hasta 999
  
  if (frameCount == 100)
  {
    exit();
  }
}
