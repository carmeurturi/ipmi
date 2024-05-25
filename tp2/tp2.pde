//carmela urturi. comision 2. 119160/8

int miVariable;
String texto; 
String texto2; 
String texto3;
String texto4;
PImage miimagen;
PImage miimagen2;
PImage miimagen3;
PImage miimagen4;
int tiempo;
boolean presentacionIniciada = true;

void setup() {
  
  size(640,480);
 background(0);
 textSize(60);
  
  miimagen= loadImage("imagenUNO.jpg");
  miimagen2= loadImage("imagen2.jpg");
  miimagen3= loadImage("imagen3.jpg");
  miimagen4= loadImage("imagen4.jpg");
 

  texto = " UNO" ;
  texto2 = "El UNO es un \njuego de cartas \npara jugar en \ngrupo.\n El objetivo es \nser el primero \nen quedarse \nsin \ncartas.";
  texto3 = "se reparten 7 cartas a cada jugador y \n en el centro se colocan un pozo, \npara arrojar las cartas, y un mazo \ndonde estan las cartas que debemos \ntomar.";
  texto4 = "el juego consta \nde 108/112 cartas, \ny se dividen en 'normales';\n cartas del 1 al 9 y \nde color rojo,azul, \nverde y amarillo \ny 'especiales; rotar \nel sentido, cambiar de color, \ncambiar de colory sumar 4 cartas, \nsumar dos cartas y \nsaltear.";
  
  tiempo = millis();
  
 println(frameCount);
 
}

void draw() {
  background(255);
   miVariable = frameCount ;
  println(miVariable);
  fill(0);
  if (frameCount >= 0) { 
  image(miimagen,20,20);
  fill(244,0,0);
  text(texto,miVariable,450); 
} //pantalla 1
  
  if (frameCount > 500) {
  image(miimagen2,0,0);
  textSize(25);
  fill(0); 
  text(texto2,420,miVariable/2-250); 
} //pantalla 2
 
  if (frameCount > 1000) { 
  image(miimagen3,0,0); 
  text(texto3,miVariable/2-500,150);
} //pantalla 3
  
  if (frameCount > 1500) { 
  image(miimagen4,0,0);
  noStroke();
  fill(255);
  rect(250,0,300,640);
  textSize(20); 
  fill(0,0,255);
  text(texto4,400,miVariable/2-800); 
 mostrarBotonReiniciar(); 
  } // pantalla 4
}

void mostrarBotonReiniciar() {
  float offset = 200; 
  fill(255); 
  rect(width / 2 - 50 - offset, height / 2 - 25, 100, 50); 
  fill(0); 
  textAlign(CENTER, CENTER); 
  textSize(16); 
  text("Reiniciar", width / 2 - offset, height / 2); 
}

void mousePressed() {
  if (presentacionIniciada && mouseX > width / 2 - 50 - 200 && mouseX < width / 2 + 50 - 200 && mouseY > height / 2 - 25 && mouseY < height / 2 + 25) {
    reiniciarSketch(); 
  }
}

void reiniciarSketch() {
  presentacionIniciada = true; 
  miVariable = 0; 
  tiempo = millis();
  frameCount = 0;
}
