//esta clase va a contener a mis otras clases
  class Juego {
    
    //Propiedades
    int pantalla=0; //para las distintas pantallas
    int puntos=0; //si llego a 150 puntos gano
    PImage fondo, fondoinicio, fondoperder, borde,ganaste;
    PFont titulo;
    Duende duende;
    Obstaculos obstaculo;
    Obstaculos[] obs;
  
    //Constructor
  
    Juego() {
      
      puntos = 0;
      duende= new Duende(58, 250);
      obstaculo= new Obstaculos(550, 250);
      textAlign(CENTER);
      fondo=loadImage("fondo.jpg");
      fondoinicio=loadImage("fondo2.jpg");
      fondoperder=loadImage("fondo3.jpg");
      borde=loadImage("borde.png");
      ganaste=loadImage("ganaste.jpg");
      titulo=loadFont("Dinosaur-48.vlw");
      
      obs = new Obstaculos[3];
      for (int i=1;i<4;i++){ //esto es para crear los 3 obstaculos
        obs[i-1] = new Obstaculos(550*i,300);
      }
    }
  //distintas pantallas
  void dibujar() {
    if (pantalla == 0) {
      inicio();
    }
    if (pantalla == 1) {
      jugar();
    }
    if (pantalla == 2) {
      ganar();
    }
    if (pantalla == 3) {
      perder();
    }
    if (pantalla == 4) {
      creditos();
    }
  }

  //inicio
  void inicio() {
    image(fondoinicio, 0, 0, 600, 400);
   player.play(); // le doy play a la musica
   textFont(titulo);
    textSize(75);
    fill(16,75,4);
    text("ELF", width/2, height/2-60);
    rectMode(CENTER);
    fill(255, 205, 77);
    noStroke();
    rect(width/2, height/2+10, 380, 115, 30);
    fill(0);
    textSize(18);
    text("presiona J para jugar: \n salta y evita los objetos dañinos  \n obtén 150 puntos para ganar ", width/2+2, height/2-10);
  }

  //el juego
  void jugar() {
    pushStyle();
    image(fondo, 0, 0);
    image(borde, 450, 16, 130, 80);
    textSize(40);
    textAlign(CENTER);
    text("¡Buena suerte!", width/2-20, 80);
    textSize(20);
    text("PUNTOS", width/2+215, 50);
    text(puntos, width/2+215, 75);
    popStyle();
    duende.dibujar(); //dibujo el duende
    duende.saltar(); //activo el salto
    
    //aca dibujo el arreglo de obstaculos:
    for (int i=0;i<3;i++){
      obs[i].dibujar();
    }
    coli(); //las colisiones para poder ganar/perder
    checkPuntos(); //puntaje
    resetObs(); // esto es para q se vuelvan a generar los obstaculos random y para que ande bien el contador de puntos
    println("Puntos: "+puntos);
    println("Player: "+duende.posx);
    println("Obstaculo "+obstaculo.x);
  }

//ganaste
  void ganar() {
    //pantalla=2;
    image(ganaste,0,0,600,400);
    textSize(100);
    fill(0,0,180);
    text("GANASTE", width/2, height/2-100);
    textSize(24);
        fill(0);
    text("Presiona R para preiniciar", width/2, height/2+150);
    text("Presiona c para ver los creditos", width/2, height/2+190);
  }


//perdiste
  void perder() {
    //pantalla=3;
    image(fondoperder, 0, 0, 600, 400);
    textSize(100);
    fill(0);
    text("PERDISTE", width/2, height/2-10);
    textSize(24);
    text("Presiona R para preiniciar", width/2, height/2+100);
    text("Presiona c para ver los creditos", width/2, height/2+130);
  }
  
  //creditos
  void creditos() {
    //pantalla=4;
    image(fondoinicio, 0, 0, 600, 400);
       textSize(50);
    text("CRÉDITOS", width/2, height/3);
    textSize(30);
    text("Peñaloza, Milena 91388/8", width/2, height/2);
    textSize(18);
    fill(0);
    text("Presiona R para reiniciar", width/2, height/2+100);
  }
  
  //reiniciar: puntos, duende, obstaculos y volvemos al inicio
  void reiniciar() {
    puntos=0;
    duende.posy=250;
    for (int i=1;i<4;i++){
      obs[i-1] = new Obstaculos(550*i,300*i);
    }
    pantalla = 0;
  }


//Funciones con teclado
  void keyPressed() {
    //pantalla incio
    if (pantalla==0) {
      if ( key == 'j' || key == 'J') {
        //pantalla jugar
        pantalla = 1;
      }
    }
    //si estoy jugando activo el salto
    if (pantalla==1) {
      duende.teclas();
    }
    // si ganaste
    if (pantalla==2) {
      //reinicio al incio
      if (key=='r' || key =='R') {
        reiniciar();
      }
      //voy a los creditos
      else if (key=='c' || key =='C') {
        pantalla=4;
      }
    }
    if (pantalla==3) {
      //reinicio al incio
      if (key=='r' || key =='R') {
        reiniciar();
      }
      //voy a los creditos
      else if (key=='c' || key =='C') {
        pantalla=4;
      }
    }
    if (pantalla==4) {
      if (key =='r' || key =='R') {
        reiniciar();
      }
    }
  }


//colisiones
  void coli() {
    for(int i=0;i<3;i++){
      if (dist(duende.posx, duende.posy, obs[i].x, obs[i].y)<=100) {
        pantalla=3;
        //mido la distancia entre la pos del duende y los obstaculos, si es mayor o igual que 100 pierdo.
      }
    }
  }
  
  //puntaje
  void checkPuntos(){ //suma de a 27 puntos porque hay 27 frames cuando pasa el obstaculo
    for(int i=0;i<3;i++){
      if(duende.posx>=obs[i].x){
        puntos+=1;
      }
    }
    if (puntos>=150){ //si llego a 150 gano
      pantalla=2;
    }
  }
  
  //reseteo obstaculos
  void resetObs(){
    for(int i=0;i<3;i++){
      if(obs[i].x<=-75){ 
        obs[i].x=1650; //se crean a 1650 puntos de dist
        obs[i].img = floor(random(0,2.9)); //pongo obstaculos random
      }
    }
  }
}
