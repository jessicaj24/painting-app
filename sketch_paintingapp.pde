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
color black = 0;
color selectedColor;

void setup() {
  size(600, 600);
  background(255);
  strokeWeight(5);
  stroke(black);
  selectedColor=black;
  bow=loadImage("bow.png");
  bowOn=false;
  cloud=loadImage("cloud.png");
  cloudOn=false;
}

void draw() {
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
  
  tactile(215,5,25,25);
  fill(teal);
  rect(215,5,25,25);
  
  tactile(215,40,25,25);
  fill(purple);
  rect(215,40,25,25);
  
  tactile(215,75,25,25);
  fill(blue);
  rect(215,75,25,25);
  
  tactile(250,5,25,25);
  fill(yellow);
  rect(250,5,25,25);
  
  tactile(250,40,25,25);
  fill(pink);
  rect(250,40,25,25);
}

void mouseDragged() {
  if (bowOn==false) {
    if (cloudOn==true){
      image(cloud, mouseX, mouseY, 100, 100);
    }
    if (cloudOn==false){
    stroke(selectedColor);
    strokeWeight(5);
    line(pmouseX, pmouseY, mouseX, mouseY);      
    }
  }
  if (bowOn==true) {
    image(bow, mouseX, mouseY, 100, 100);
  }
  if (cloudOn==false) {
    if (bowOn==true){
      image(bow, mouseX, mouseY, 100, 100);
    }
    if (bowOn==false){
    stroke(selectedColor);
    strokeWeight(5);
    line(pmouseX, pmouseY, mouseX, mouseY);
    }
  }
  if (cloudOn==true){
    image(cloud, mouseX, mouseY, 100, 100);
  }
}


void mouseReleased() {
  if (mouseX>0 && mouseX<100 && mouseY>0 && mouseY<100) {
    bowOn=!bowOn;
  }
  if (mouseX>100 && mouseX<200 && mouseY>0 && mouseY<100) {
    cloudOn=!cloudOn;
  }
  if (mouseX>215 && mouseX<240 && mouseY>5 && mouseY<30){
    selectedColor=teal;
  }
  if (mouseX>215 && mouseX<240 && mouseY>40 && mouseY<65){
    selectedColor=purple;
  }
  if (mouseX>215 && mouseX<240 && mouseY>75 && mouseY<100){
    selectedColor=blue;
  }
  if (mouseX>250 && mouseX<275 && mouseY>5 && mouseY<30){
    selectedColor=yellow;
  }
  if (mouseX>250 && mouseX<275 && mouseY>40 && mouseY<65){
    selectedColor=pink;
  }
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
