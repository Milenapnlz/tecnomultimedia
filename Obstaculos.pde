//mis obstaculos van a ser veneno, fuego y bomba aparecen random y es un arreglo
class Obstaculos {

  //propiedades
  int img; //para el arreglo
  float x, y, vel;
  PImage[] imagenes= new PImage[3]; //arreglo de imagenes

//constructor
  Obstaculos(float posX, float posY) {
    imagenes[0]=loadImage("fuego.png"); //fuego
    imagenes[1]= loadImage("veneno.png"); //veneno
    imagenes[2]= loadImage("bomba.png"); //bomba
    x=posX;
    y=posY;
    vel=5;
    img = floor(random(0,2.9)); //esto elige un nro random entre 0 y 2.9 y ese nro se redondea siempre para abajo, entonces queda 0,1,2 que es mi arreglo
  }
  void dibujar() {
   pushStyle();
   imageMode(CENTER);
   image(imagenes[img], x, y,150,150); //mis obstaculos van a aparecer de forma random
    x= x- vel;
    y=260;
    popStyle();
  }
}
