//pallette of colors
color teal = #00FFC1;
color purple = #FF00E2;
color blue = #00ECFF;
color yellow = #DCFF00;
color pink = #FF006F;
color white = #FFFCFC;
color sakura = #FFCBF0;

float sliderX;
float circleSize;

void setup (){
  size (800,600);
  strokeWeight(5);
  stroke(white);
  fill(sakura);
  sliderX=400;
  circleSize=20;
}

void draw (){
  background(pink);
  
  circleSize=map(add a map function);
  
  line(100,300,700,300);
  circle(sliderX,300,circleSize);
}

void mouseDragged(){
  controlSlider();
}

void mouseReleased(){
  controlSlider();
}

void controlSlider(){
    if (mouseX>100 && mouseX<700 && mouseY>275 && mouseY<325){
    sliderX=mouseX;
  }
}
