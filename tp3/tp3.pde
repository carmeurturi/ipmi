// carmela urturi comision 2 119160/8
PImage img;  
color[][] randomColors; 
boolean colorChange = false; 
int gridSize = 20;  

void setup() {
  size(800, 400);  
  img = loadImage("F_33.jpeg");  
  img.resize(width / 2, height);  
  randomColors = new color[img.width][img.height]; 
  generateRandomColors();  
}

void draw() {
  background(255);  
  

  image(img, 0, 0);


  drawInteractiveGrid();
}

void drawInteractiveGrid() {
  int cols = img.width / gridSize;
  int rows = img.height / gridSize;
  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      int x = i * gridSize;
      int y = j * gridSize;
      
      color c = img.get(x, y); 
     
      if (colorChange) {
        c = randomColors[x][y];
      }
      
      float newX = map(x, 0, img.width, width / 2, width);  
      float newY = map(y, 0, img.height, 0, height); 
      
  
      newX += map(mouseX, 0, width, -10, 10);
      newY += map(mouseY, 0, height, -10, 10);

    
      fill(c);
      noStroke();
      rect(newX, newY, gridSize, gridSize);
    }
  }
}

void keyPressed() {
  if (key == ' ') {
    colorChange = !colorChange;  
    if (colorChange) {
      generateRandomColors();  
    }
  }
}

void mouseMoved() {
 
  gridSize = int(map(mouseY, 0, height, 5, 40));
}

void generateRandomColors() {
  for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height; y++) {
      randomColors[x][y] = color(random(255), random(255), random(255));
    }
  }
}
