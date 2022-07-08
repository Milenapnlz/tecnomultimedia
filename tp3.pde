/*Peñaloza Milena Gabriela 
Legajo 91388/8
link al video explicativo: https://youtu.be/wlLSnz9D-hc
*/
PImage [] fondo = new PImage [3]; 
PFont titulo, instrucciones;
String estado; //para las distintas pantallas
int puntos=0;
int vel=1;
int vidas=5;
boolean perdiste=false;
int posX; 
int dir=1;

void setup(){
  
  size(500,500);
 fondo[0]= loadImage("fondo.jpg");
 fondo[1]= loadImage("juego.jpg");
 fondo[2]= loadImage("pelotitas.jpg");
  titulo=loadFont("LithosPro-Black-48.vlw");
  instrucciones= loadFont("LetterGothicStd-Bold-20.vlw");
  textAlign(CENTER);
  rectMode(CENTER);
  estado = "inicio";
  posX=width/2;  

}
void draw(){
  
  //PANTALLA DE INICIO
  if( estado.equals("inicio") ){
    image(fondo[0],0,0,width,height); //fondo
textFont(titulo);
    textSize(55);
fill(0);
text("TAP THE BALL", width/2,height/2-50);
textSize(54);
fill(0,0,255);
text("TAP THE BALL", width/2,height/2-50);
fill(255);
//para pasar a instrucciones...
rect(width/2,height/2+100,350,50); 
fill(0);
textFont(instrucciones);
text( "Presioná la barra espaciadora\n para continuar", width/2, height/2+100 ); 
  }
  
    //PANTALLA DE INSTRUCCIONES Y CRÉDITOS
 else if( estado.equals("instrucciones") ){
   image(fondo[2],0,0,width,height);
   fill(255);
   rect(width/2,height/2,400,400);
   fill(0);
   textFont(titulo);
   fill(0,0,255);
    text( "Cómo Jugar", width/2, height/2-150);  
  textFont(instrucciones);
  textSize(30);
  fill(200,0,0);
text( "¡Tocá la pelota!", width/2, height/2-90); 
textSize(20);
fill(0);
text( "Cada vez es más rápida", width/2, height/2-45 ); 
text( "Tenés 5 vidas", width/2, height/2-15 );   

//CREDITOS :)
textFont(titulo);
   fill(0,0,255);
   textSize(25);
    text( "Realizado por", width/2, height/2+60); 
   textFont(instrucciones);
  textSize(20);
  fill(0);
text( "Milena Gabriela Peñaloza", width/2, height/2+90); 
text( "Legajo: 91388/8", width/2, height/2+120); 
//boton
    pushStyle();
    if( dist( mouseX, mouseY, width/2, height/2+160) <= 25 ){
      fill( 255, 0, 0 );
    }else{
      fill( 0 );
    }
    ellipse( width/2, height/2+160, 50, 50 );
    popStyle();}
    
    //EL JUEGO :)
else if( estado.equals("jugando") ){
    image(fondo[1],0,0,width,height);
    fill(255,126,5);
   ellipse(posX,height/2,80,80); //pelota :)
    posX=posX+(vel*dir);} //movimiento
 
    
     if (posX > width-40 || posX<40) {//rebota cuando llega al fin de la pantalla
     dir=-dir; }
if( estado.equals("jugando") ){
  textFont(titulo);
  textSize(25);
  text("puntos = "+puntos,120,40);                  
  text("vidas = "+vidas,width-100,40);}         
  if (vidas<=0)                                 
  {
   for (int j=0; j<height; j++) 
 { for (int i=0; i<height; i++) 
 { fill (245);
 noStroke();
 ellipse (j*10, i*10, 10, 10); } }
    textSize(30);
    fill(0);
    text("apretá R para reiniciar", width/2,height/2);
    noLoop();                              
    perdiste=true;
    textSize(13);
  }
}


 void keyPressed(){
  //pasar de inicio a instrucciones 
  if( estado.equals("inicio") && key == ' ' ){
    estado = "instrucciones"; }
    
 reiniciar();
  
 
}
void reiniciar() { //función propia para reinicio
  if (key=='r'|| key=='R'){ //contempla tanto minúscula como mayúscula
 //reseteo todas las variables 
    vel=1;  
    vidas=5;
    puntos=0;
    posX=width/2;
    dir=1;
    perdiste=false;
    loop();                               
} 
 }


void mousePressed(){
  //evento que cambia de instrucciones a jugando
  if( estado.equals("instrucciones") && dist( mouseX, mouseY, width/2, height/2+160) <= 25 ){
    estado = "jugando";
  }
 
 if(estado.equals("jugando")&& dist(mouseX, mouseY, posX,200) <=80) { //si estoy jugando y aprieto la pelota
   
    puntos=puntos+vel; // aumenta la velocidad
    vel=vel+1;   //suben los puntos
  }
  else 
  {
    if (vel<1){
    vel=vel-1; }
    vidas=vidas-1;  //sacar una vida
  }

 
}
  
