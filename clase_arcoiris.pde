class Arcoiris{ //mi clase y sus objetos/instancias
  float x1,y1; 
  PImage arcoiris1;
  PImage arcoiris2; 
  
  //constructor
 Arcoiris(){
   x1 = 300;
   y1= 250;
   arcoiris1= loadImage("arcoiris1.png");
   arcoiris2=loadImage("arcoiris2.png");
 }
 
 //metodos
 void dibujar(){
   //aca cargo las fotos, cuando presiono el mouse cambia el color:)
   if(mousePressed==true){
     pushStyle();
   imageMode(CENTER);
   image (arcoiris2, x1,y1);
   arcoiris2.resize(590,590);
   image (arcoiris2,x1,y1);
 popStyle();}
   else if (mousePressed==false){ 
      pushStyle();
   imageMode(CENTER);
   image (arcoiris1, x1,y1);
   arcoiris1.resize(590,590);
   image (arcoiris1,x1,y1);
   popStyle();}
   }
 }

 
