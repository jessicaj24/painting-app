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
color selectedColor;

void setup() {
  size(600, 600);
  background(255);
  strokeWeight(5);
  stroke(white);
  selectedColor=sakura;
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
}

void mouseDragged() {
  if (bowOn==false) {
    stroke(0);
    strokeWeight(5);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } else {
    image(bow, mouseX, mouseY, 100, 100);
  }
  if (cloudOn==false) {
    stroke(0);
    strokeWeight(5);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } else {
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
}


void tactile(int x, int y, int w, int h) {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
    fill(240, 215, 236);
  } else {
    fill(255);
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
