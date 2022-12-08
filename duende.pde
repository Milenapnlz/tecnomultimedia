//esta es mi clase del personaje y sus funciones
class Duende {
  //propiedades
  PImage duende;
  float posx, posy;
  float vel = 8;  //velocidad: para emular gravedad
  boolean saltando = false;

//constructor
  Duende( float x, float y ) {
    posx = x;
    posy = y;

    duende= loadImage ("duende.png");
  }

  void dibujar() {
    //dibujo el duende y ajusto el tamaño
    pushStyle();
    imageMode(CENTER);
    image (duende, posx, posy,150,150);
    popStyle();
  }

  void saltar() {
    if ( saltando ) {
      posy = posy - vel;
      vel = vel - 0.2;  //0.2 = indice de friccion

      if (posy >= 250 ) {  //si regresa al piso, resetea variables
        posy = 250;
        vel = 8;
        saltando = false;  //importante: para que no vuelva a saltar automaticamente
      }
    }
  }

  void teclas() {
    if ( key == ' ' )
      saltando = true;
  }
}
