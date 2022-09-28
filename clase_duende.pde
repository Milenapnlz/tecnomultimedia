class Duende {
  
 //aca declaro las instancias, es decir los objetos.

 
 int x,y; 
 PImage duende;
 
 
 //aca está el constructor
  
  Duende (){
     x = 10;
    y = 400;
    duende= loadImage ("duende.png");
    
  }
  //mis metodos
  void dibujar (){
    //dibujo el duende y ajusto el tamaño
    image (duende,x,y);
    duende.resize(150,150);
    image (duende,x,y);

    //desplazamiento con teclado
    if (keyPressed) { if(key == 'd'||key=='D'){
       x++;
 } else if(key=='a'||key=='A'){
   x--;
 } 
 }
    }
    }
