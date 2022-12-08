
/*
TP 5
 Peñaloza, Milena Gabriela
 Legajo 91388/8
 Dino de google
 Link al video: https://youtu.be/EkNm7kow8oQ
 */
 import ddf.minim.*; //para la musica
 Minim minim;
AudioPlayer player;

Juego juego;

void setup() {
  size(600, 400);

  minim=new Minim(this);
  player= minim.loadFile("musica.wav"); //cargo mi archivo.wav

  juego = new Juego();
 
}

void draw() {
  background(255);
  juego.dibujar();
}

void keyPressed() {

  juego.keyPressed();
}
