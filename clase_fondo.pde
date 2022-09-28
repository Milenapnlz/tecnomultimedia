 
class Fondo {
  //aca declaro las instancias, es decir los objetos.
float tamanio;
  Duende duende;
  Arcoiris arcoiris1, arcoiris2;

//aca llamo a los constructores
Fondo (){
  duende= new Duende();
  arcoiris1= new Arcoiris ();
  arcoiris2= new Arcoiris ();
}
//mis métodos

void dibujar(){
  pushStyle();

  textSize(30);
  text("¡Buena suerte!",210,25);
  fill(0,180,0);
noStroke();
rect(0,540,600,80);
  textSize(15);
  fill(0);
  text("Presioná A o D para moverte y clickeá para cambiar de color el arcoiris", 40,580);

popStyle();

duende.dibujar();
arcoiris1.dibujar();
arcoiris2.dibujar();
}
  
}
