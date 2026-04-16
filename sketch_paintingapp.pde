PImage bow;
boolean bowOn;
PImage cloud;
boolean cloudOn;
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

void setup() {
  size(600, 600);
  background(255);
  strokeWeight(5);
  stroke(black);
  selectedColor=white;
  bow=loadImage("bow.png");
  bowOn=false;
  cloud=loadImage("cloud.png");
  cloudOn=false;
  sliderY=30;
  strokeSize=5;
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
    image(bow, mouseX, mouseY, 100, 100);
  } else if (cloudOn) {
    image(cloud, mouseX, mouseY, 100, 100);
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
