PImage bow;
boolean bowOn;
PImage cloud;
boolean cloudOn;
PImage eraser;
color teal = #00FFC1;
color purple = #FF00E2;
color blue = #00ECFF;
color yellow = #DCFF00;
color pink = #FF006F;
color white = #FFFCFC;
color sakura = #FFCBF0;
color black = 0;
color selectedColor;
float sliderY;
float strokeSize;
float stampSize;

void setup() {
  size(600, 600,P2D);
  background(255);
  strokeWeight(5);
  stroke(black);
  selectedColor=white;
  bow=loadImage("bow.png");
  bowOn=false;
  cloud=loadImage("cloud.png");
  cloudOn=false;
  eraser=loadImage("eraser.png");
  sliderY=30;
  strokeSize=5;
  stampSize=70;
}

void draw() {
  noStroke();
  fill(sakura);
  rect(0, 0, 600, 110);
  fill(selectedColor);
  strokeWeight(5);
  stroke(0);
  line(360, 10, 360, 90);
  circle(360,sliderY,20);
  fill(0);
  textSize(12);
  text("small", 385,20);
  text("big",385,85);
  strokeWeight(1);
  stroke(255, 185, 244);
  fill(255);

  tactile(0, 0, 100, 100);
  bowOnOff();
  rect(0, 0, 100, 100);
  image(bow, 0, 0, 100, 100);

  tactile(100, 0, 100, 100);
  cloudOnOff();
  rect(100, 0, 100, 100);
  image(cloud, 100, 0, 100, 100);
  
  tactile(520,20,60,60);
  rect(520,20,60,60);
  image(eraser,520,20,60,60);

  strokeWeight(1);
  stroke(0);
  tactile(215, 5, 25, 25);
  fill(teal);
  rect(215, 5, 25, 25);

  strokeWeight(1);
  stroke(0);
  tactile(215, 40, 25, 25);
  fill(purple);
  rect(215, 40, 25, 25);

  strokeWeight(1);
  stroke(0);
  tactile(215, 75, 25, 25);
  fill(blue);
  rect(215, 75, 25, 25);

  strokeWeight(1);
  stroke(0);
  tactile(250, 5, 25, 25);
  fill(yellow);
  rect(250, 5, 25, 25);

  strokeWeight(1);
  stroke(0);
  tactile(250, 40, 25, 25);
  fill(pink);
  rect(250, 40, 25, 25);
  
  strokeWeight(1);
  stroke(0);
  tactile(250, 75, 25, 25);
  fill(black);
  rect(250, 75, 25, 25);
  
  //indicator
  stroke(white);
  fill(selectedColor);
  rect(285, 5, 50 ,95);
  fill(black);
  text("current", 292, 50);
  text("colour", 294, 65);
  
  stampSize=map(sliderY,10, 90, 20, 120);
  strokeSize=map(sliderY, 10, 90, 1, 30);
  
  if (dist(460,18,mouseX,mouseY)<15){
    stroke(black);
  } else{
    stroke(white);
  }
  fill(white);
  ellipse(460,18,60,30);
  fill(black);
  text("new",450,22);
  
 if (dist(460,55,mouseX,mouseY)<15){
    stroke(black);
  } else{
    stroke(white);
  }
  fill(white);
  ellipse(460,55,60,30);
  fill(black);
  text("save", 450,59);
  
  if (dist(460,90,mouseX,mouseY)<15){
    stroke(black);
  } else{
    stroke(white);
  }
  fill(white);
  ellipse(460,90,60,30);
  fill(black);
  text("load", 450,94);
}

void mouseDragged() {
  if (bowOn) {
    image(bow, mouseX, mouseY, stampSize, stampSize);
  } else if (cloudOn) {
    image(cloud, mouseX, mouseY, stampSize, stampSize);
  } else {
    stroke(selectedColor);
    strokeWeight(strokeSize);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  controlSlider();
}


void mouseReleased() {
  if (mouseX>0 && mouseX<100 && mouseY>0 && mouseY<100) {
    bowOn = !bowOn;
    cloudOn = false;
  }
  if (mouseX>100 && mouseX<200 && mouseY>0 && mouseY<100) {
    cloudOn = !cloudOn;
    bowOn = false;
  }
  if (mouseX>215 && mouseX<240 && mouseY>5 && mouseY<30) {
    selectedColor=teal;
    bowOn = false;
    cloudOn = false;
  }
  if (mouseX>215 && mouseX<240 && mouseY>40 && mouseY<65) {
    selectedColor=purple;
    bowOn = false;
    cloudOn = false;
  }
  if (mouseX>215 && mouseX<240 && mouseY>75 && mouseY<100) {
    selectedColor=blue;
    bowOn = false;
    cloudOn = false;
  }
  if (mouseX>250 && mouseX<275 && mouseY>5 && mouseY<30) {
    selectedColor=yellow;
    bowOn = false;
    cloudOn = false;
  }
  if (mouseX>250 && mouseX<275 && mouseY>40 && mouseY<65) {
    selectedColor=pink;
    bowOn = false;
    cloudOn = false;
  }
  if (mouseX>250 && mouseX<275 && mouseY>75 && mouseY<100) {
    selectedColor=black;
    bowOn = false;
    cloudOn = false;
  }
  if (dist(460,18,mouseX,mouseY)<15){
    background(white);
  }
  if (dist(460,55,mouseX,mouseY)<15){
    selectOutput("Choose a name for your new image file","saveImage");
  }
  if (dist(460,90,mouseX,mouseY)<15){
    selectInput("Pick an image to load","openImage");
  }
  if (mouseX>520 && mouseX<580 && mouseY>20 && mouseY<80) {
    selectedColor=white;
    bowOn = false;
    cloudOn = false;
  }
  controlSlider();
}


void tactile(int x, int y, int w, int h) {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
    fill(240, 215, 236);
    stroke(0);
  } else {
    fill(255);
    stroke(white);
  }
}

void bowOnOff() {
  if (bowOn==true) {
    stroke(255, 0, 0);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(1);
  }
}

void cloudOnOff() {
  if (cloudOn==true) {
    stroke(255, 0, 0);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(1);
  }
}

void controlSlider(){
  if (mouseX>350 && mouseX<370 && mouseY>15 && mouseY<90){
    sliderY=mouseY;
  }
}

void saveImage(File f) {
  if (f!=null){
    PImage canvas = get(71,1,width-71,height-1);
    canvas.save(f.getAbsolutePath());
  }
}

void openImage(File f){
  if (f!=null){
    int n=0;
    while(n<100){
      PImage pic=loadImage(f.getPath());
      image(pic,20,120);
      n=n+1;
    }
  }
}
