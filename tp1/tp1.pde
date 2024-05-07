//carmela urturi 119160/8 //
PImage miimagen;
void setup() {
  size(800,400);
  miimagen = loadImage("paisaje mont.jpg");
  background(97,172,224);
}
void draw() {
  noStroke();
  fill(240, 255); //nubes blancas//
  ellipse(500,160,240,50);
  ellipse(700,170,250,70);
  ellipse(410,145,140,40);
  
    fill(220, 230); //nubes grises osc//
  ellipse(750,140,150,50);
  ellipse(470,190,270,50);
  ellipse(700,180,225,50);
  ellipse(400,135,100,50);
  
  fill(235,220); // nubes grises claras //
    ellipse(800,130,140,40);
    ellipse(800,120,100,40);
    ellipse(485,70,240,50);
    ellipse(450,100,170,55);
    
  fill(39,87,146,250); // montanas fondo//
  triangle(350,250,540,185,800,330);
  triangle(350,330,590,175,1000,300);
  triangle(300,330,450,150,750,330);
  
  fill(233,255,244,200); // nieve //
  triangle(395,220,445,240,470,220);
  triangle(590,200,720,230,650,270);
  triangle(540,190,525,200,555,200);
  
  fill(25,74,125); // montana medio //
  triangle(350,330,490,200,800,330);
  
  fill(11,55,115); // montana grande medio//
  triangle(550,330,800,120,1000,330);
  
  fill(38,69,123); // montanas de adelante //
  triangle(300,330,800,250,1000,360);
  triangle(600,330,800,175,1000,330);
  
   fill(81,100,36); // pasto //
  rect(400,330,400,130); 
  
  fill(120,143,65,200); // pasto claro //
  rect(400,330,400,20); 
  
  fill(38,64,32); //arboles//
  triangle(760,325,800,335,720,335);
  triangle(760,320,795,330,725,330);
  triangle(760,315,790,325,730,325);
  triangle(760,310,785,320,735,320);
  triangle(760,305,780,315,740,315);
  triangle(760,300,777,310,742,310);
  image(miimagen,0,0);  
  
}
