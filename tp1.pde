PImage FondoA;//FONDO DE LA PANTALLA PRINCIPAL
PFont t; //TIPOGRAFÍA
int posX,posY,tX,tY; //PARA EL BOTÓN
boolean insideButton = mouseX>posX&&mouseX<posX+tX&&mouseY>posY&&mouseY<posY+tY;//ESTOY DENTRO DEL BOTON

void setup(){
size(600,400);
FondoA=loadImage("annabelle.jpg"); //IMAGEN PANTALLA PRINCIPAL
t=loadFont("LibreBaskerville-Regular-50.vlw"); //TIPOGRAFÍA DEL TÍTULO
posX=180;
posY=240;
tX=150;
tY=50;
rectMode(CENTER);  
textAlign(CENTER);
frameRate(30);

}


void draw(){

println(frameCount);
background(0);
println(mouseX,mouseY); 
image(FondoA,0,0,width,height);
 textSize(50);
 textFont(t);
fill(210,0,0);
text("ANNABELLE",180,200); //TITULO DE LA PANTALLA PRINCIPAL
//BOTÓN DE CRÉDITOS...
fill(10);
rect(posX,posY,tX,tY);  
fill(210,0,0);
 textSize(20);
text("START",posX,posY+10);

if(insideButton){ //SI ESTOY DENTRO BACKGROUND 0
background(0);}
if(insideButton&&frameCount>0&&frameCount<60){ //PRIMERA PANTALLA DE DIRECCIÓN CUANDO EL FRAMECOUNT VA DE 0 A 60 
text("Directed by",width/2,height/2-25);
text("John Robert Leonetti",width/2,height/2);
textSize(15);
text("Press  R  to restart",width/2,350);} 
else if(insideButton&&frameCount>60&&frameCount<120){//PANTALLA DE PRODUCCIÓN Y GUIÓN
textSize(15);
text("Produced by",width/2,height/2-80);
text("Written by",width/2,height/2);
textSize(20);
text("Peter Safran",width/2,height/2-60); //productores
text("James Wan",width/2,height/2-40); //productores
text("Gary Dauberman", width/2,height/2+20); //guionista
textSize(15);
text("Press  R  to restart",width/2,350);}
else if (insideButton&&frameCount>120&&frameCount<180){//PANTALLA DE MUSICA
textSize(20);
text("Music by",width/2,height/2-25); 
text("Joseph Bishara",width/2,height/2);
textSize(15);
text("Press  R  to restart",width/2,350);} 
else if(insideButton&&frameCount>180&&frameCount<240){//PANTALLA DE PROTAGRONISTAS
textSize(20);
text("Cast",width/2,height/2-25);
  text("Annabelle Wallis",width/2,height/2);
textSize(15);
text("Press  R  to restart",width/2,350);} 
else if(insideButton&&frameCount>240&&frameCount<300){//  SEGUNDA PANTALLA DE PROTAGRONISTAS 
 textSize(20);
text("Ward Horton",width/2,height/2);
 textSize(15); 
text("Press  R  to restart",width/2,350);} 
else if(insideButton&&frameCount>300&&frameCount<360){ //PANTALLA DE ACTORES SECUNDARIOS
textSize(15);
text("And",width/2,height/2-40);
 textSize(20);
text("Alfre Woodard",width/2,height/2-20);
text("Tony Amendola",width/2,height/2);
text("Eric Ladin",width/2,height/2+20);
textSize(15);
text("Press  R  to restart",width/2,350);}
else if (insideButton&&frameCount>360&&frameCount<420){ //PANTALLA DE CIERRE CON TÍTULO.
textSize(80);
 fill(random(140,210),0,0); //USO DE RANDOM PARA QUE TITILEN LAS LETRAS
text("ANNABELLE",width/2,height/2);}
else if (insideButton&&frameCount==420){ //FIN DE CRÉDITOS, VOLVEMOS A LA PANTALLA PRINCIPAL :)
insideButton=false;}

} 

void mouseClicked(){ //PARA PASAR A LOS CREDITOS
if(mouseX > posX && mouseX <= posX + tX && mouseY > posY && mouseY <= posY + tY){
insideButton=true;
frameRate(30);
frameCount=0;} //CUANDO ESTOY DENTRO DEL BOTÓN SE REINICIA EL FRAMECOUNT

}

void keyPressed(){ //PARA VOLVER A PANTALLA PRINCIPAL TOCANDO R
if (key == 'r' || key == 'R'){ //MAYUSCULA Y MINUSCULA
insideButton=false; } //VOLVEMOS A PANTALLA PRINCIPAL
}
