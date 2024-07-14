//carmela urturi, comision 2 

https://youtu.be/B6JK87wznE4

PImage opartImage;
boolean alternarColor = false;
color[] colores = {#FF5733, #33FF57, #3357FF, #FF33A5};
int indiceColor = 0;

void setup() {
  size(800, 400);
  opartImage = loadImage("F_6.png");

}

void draw() {
  background(255);

  image(opartImage, 0, 0, width / 2, height);

  int rectWidth = obtenerTamañoRectangulo(width, 20);
  int rectHeight = obtenerTamañoRectangulo(height, 40);

  // Cuadrado Exterior
  for (int y = 0; y < height; y += rectHeight) { 
    alternarColor = !alternarColor;
    for (int x = width / 2; x < width; x += rectWidth) { 
      if (alternarColor) {
        fill(colores[indiceColor]);
      } else {
        fill(255);
      }
      rect(x, y, rectWidth, rectHeight);
      alternarColor = !alternarColor;
    }
  }

  // Cuadrado Interior
  rectWidth = obtenerTamañoRectangulo(height, 40);
  rectHeight = obtenerTamañoRectangulo(width, 20);
  for (int y = (height / 40) * 9; y < height - (height / 40) * 9; y += rectHeight) { // Fila
    alternarColor = !alternarColor;
    for (int x = width / 2 + (width / 20) * 2; x < width - (width / 20) * 2; x += rectWidth) { // Columna
      if (alternarColor) {
        fill(colores[indiceColor]);
      } else {
        fill(255);
      }
      rect(x, y, rectWidth, rectHeight);
      alternarColor = !alternarColor;
    }
  }
}


int obtenerTamañoRectangulo(int dimension, int divisor) {
  return dimension / divisor;
}


void keyPressed() {
  if (key == 'r' || key == 'R') {
    reiniciar();
  } else if (key == ENTER || key == RETURN) {
    alternarColor = !alternarColor;
  }
}

void reiniciar() {
  alternarColor = false;
  indiceColor = 0;
}   

void mouseClicked() {
  indiceColor = (indiceColor + 1) % colores.length;
}
