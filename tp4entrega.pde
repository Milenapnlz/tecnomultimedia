// Peñaloza Milena Gabriela 91388/8
//link al video: https://www.youtube.com/watch?v=dvXM8W1xsLU


Fondo fondo;

void setup(){
  size (600,600);
fondo = new Fondo();
  
  
  
}

void draw(){
 // println(mouseX,mouseY);
  background(40,220,230);
  
  //dibujo mi clase fondo que contiene mis otras dos clases arcoiris y duende
  fondo.dibujar();
  
  
}
