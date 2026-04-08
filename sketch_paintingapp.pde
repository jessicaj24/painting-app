PImage bow;

void setup(){
  size(600,600);
  background(255);
  bow=loadImage("bow.webp");
}

void draw(){
  image(bow,50,50);
}

void mouseDragged(){
  line(pmouseX,pmouseY,mouseX,mouseY);
}
