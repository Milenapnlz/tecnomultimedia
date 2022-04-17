//Peñaloza Milena Gabriela 
// legajo: 91388/8 
//comisión 2.
void setup(){
  size(600,600);
  //Color HSB: matíz  desde 0 a 360, brillo y saturación desde 0 a 100.
  colorMode(HSB, 360,100,100);  
  strokeWeight(2);
}   
 void draw(){
    background(88,79,94);
   //rectángulos y cuadrados 
   //cuerpo
   fill(37,79,94);
 rect(200,200,200,200);
 //cuello
 fill(39,96,99);
 rect(250,175,100,25);
 //cabeza
 fill(37,79,94);
 rect(200,50,200,125);
 //boca
 fill(60,52,99);
rect(250,125,25,25);
rect(275,125,25,25);
rect(300,125,25,25);
rect(325,125,25,25);
//brazos
fill(39,96,99);
 rect (400,250,10,15);
 rect (190,250,10,15);
 rect(150,275,25,100);
 rect(425,275,25,100);
 //piernas y pies
 rect(325,400,50,100);
 rect(225,400,50,100);
 fill(37,79,94);
 rect(200,500,75,25);
 rect(325,500,75,25);
 
 //circulos y elipses... mismo valor de ancho y alto para circulos.
 //brazos y manos
 fill(355,81,86);
 ellipse (435,255,50,50);
 ellipse (165,255,50,50);
 fill(60,52,99);
 ellipse (435,255,25,25);
 ellipse (165,255,25,25);
 fill(355,81,86);
 ellipse(440,390,50,50);
 ellipse(160,390,50,50);
 //ojos
 fill(355,100,0);
 ellipse(250,100,40,40);
 ellipse(350,100,40,40);
 //algunos detalles
 fill(39,96,99);
 rect(225,225,150,50);
 fill(37,79,94);
 rect(300,35,5,15);
 fill(355,81,86);
 ellipse(302,25,20,20);
 ellipse(250,350,15,15);
 ellipse(300,350,15,15);
 ellipse(350,350,15,15);
 fill(105,79,64);
 triangle(250,240,240,250,260,250);
 triangle(300,240,290,250,310,250);
 triangle(350,240,340,250,360,250);
  }
