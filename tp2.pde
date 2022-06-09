/* 
 Trabajo Práctico N°2
 Peñaloza Milena Gabriela
 Legajo: 91388/8
 Enlace al video explicativo:  https://www.youtube.com/watch?v=QdN_xEpA4Dw
 
 
 */

int circulos=800;
float angle = 0; //para la rotación de las líneas
void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(0);
  for (int d=circulos; d>0; d-=20) { // se dibuja de mayor a menor para evitar que se superpongan; 
    strokeWeight(5); //grosor de línea
    ellipse(width/2, height/2, d, d); // se dibuja en el medio de la pantalla
    if (mousePressed==true) { 
      float color1 =map(mouseX, 0, width, 100, 255);
      float color2=map(mouseY, 0, height, 100, 255); 
      fill(0, color1, color2); // solo se modifica el color azul y verde
    } else { 
      fill(255); // en lo contrario, las ellipses son blancas
    } 
  }

  if (key==' ') { 
 agujas(); }
 else { 
    angle=0; // si no aprieto el espacio la aguja no se mueve
 }
}

void agujas(){ //función propia para las "agujas" rojas que giran 
  translate(width / 2, height / 2); //translado la coordenada 0,0 al centro de la pantalla
    rotate(angle); // 
    angle = angle+0.8; //velocidad de rotación
    strokeWeight(1);
    fill(255, 0, 0);
    rect(0, 0, width, 2); 
    rect(0, 0, 2, height); 
  
  
 
}
void keyPressed() {
  reiniciar();
}
void reiniciar() { //función propia para reinicio
  if (key=='r'|| key=='R') { //contempla tanto minúscula como mayúscula
    frameCount=0;
  }
}
