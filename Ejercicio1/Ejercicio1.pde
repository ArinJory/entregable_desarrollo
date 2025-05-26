//Configuración
void setup()
{
  //Tamaño de lienzo (espacio render)
  size(128, 128);
}

//Renderización (loop)
void draw()
{
  //Es una función RGB
  //255 => 255, 255, 255
  background(255);
  
  //Ancho de línea
  strokeWeight(4);
  
  //EjeX, ejeY, diámetro
  circle(64, 64, 60);
}
