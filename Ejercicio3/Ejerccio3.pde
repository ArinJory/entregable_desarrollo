void setup()
{
  size(64, 64);
}

void draw()
{
  //3 imágenes (300 imágenes)
  for (int i = 0; i < 3; i++)
  {
    background(255);
    strokeWeight(4);
    
    pushMatrix(); //Traslación de objetos
    
    //Algoritmo para coordenadas
    float r = random(8, 24);
    float x = random(r, width - r);
    float y = random(r, height - r);
    
    stroke(100, 100, 100);
    
    translate(x, y); //Va con pushMatrix
    
    //Círculo (0)
    if (i == 0)
    {
      circle(0, 0, (r * 2));
      saveFrame("data/circle###.png");
    }
    else if (i == 1)
    {
      rectMode(CENTER); //centro como punto referencia
      rotate(random(-0.1, 0.1));
      square(0, 0, (r * 2));
      saveFrame("data/square###.png");
    }
    else if (i == 2)
    {
      rotate(random(-0.1, 0.1));
      triangle(0, -r, r, r, -r, r);
      saveFrame("data/triangle###.png");
    }
    
    popMatrix();
  }//fin for()
  
  if (frameCount == 100)
  {
    exit();
  }
}
