PImage bow;
boolean bowOn;

void setup(){
  size(600,600);
  background(255);
  bow=loadImage("bow.png");
  bowOn=false;
}

void draw(){
  strokeWeight(1);
  stroke(255,185,244);
  fill(255);
  
  tactile(0,0,100,100);
  bowOnOff();
  rect(0,0,100,100);
  image(bow,0,0,100,100);
}

void mouseDragged(){
  if (bowOn==false){
    stroke(0);
    strokeWeight(5);
    line(pmouseX,pmouseY,mouseX,mouseY);
  }else{
    image(bow,mouseX,mouseY,100,100);
  }
}
  

void mouseReleased(){
  if (mouseX>0 && mouseX<100 && mouseY>0 && mouseY<100){
    bowOn=!bowOn;
  }
}


void tactile(int x,int y,int w, int h){
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h){
    fill(240,215,236);
  }else{
    fill(255);
  }
}

void bowOnOff(){
  
}
