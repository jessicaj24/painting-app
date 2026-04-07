//pallette of colors
color teal = #00FFC1;
color purple = #FF00E2;
color blue = #00ECFF;
color yellow = #DCFF00;
color pink = #FF006F;
color white = #FFFCFC;
color sakura = #FFCBF0;

color selectedColor;

void setup (){
  size (800,600);
  strokeWeight(5);
  stroke(white);
  selectedColor=sakura;
}

void draw (){
  background(sakura);
  
  //buttons
  tactile(60,60,80,80);
  fill(teal);
  rect(60,60,80,80);
  
  tactile(60,160,80,80);
  fill(purple);
  rect(60,160,80,80);
  
  tactile(60,260,80,80);
  fill(blue);
  rect(60,260,80,80);
  
  tactile(60,360,80,80);
  fill(yellow);
  rect(60,360,80,80);
  
  tactile(60,460,80,80);
  fill(pink);
  rect(60,460,80,80);
  
  //indicator
  stroke(white);
  fill(selectedColor);
  square(300,100,400);
}

void tactile(int x,int y,int w,int h){
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h){
    stroke(sakura);
  }
  else {
    stroke(white);
  }
  fill(pink);
  rect(60,460,80,80);
}

void mouseReleased (){
  if (mouseX>60 && mouseX<140 && mouseY>60 && mouseY<140){
    selectedColor=teal;
  }
  if (mouseX>60 && mouseX<140 && mouseY>160 && mouseY<240){
    selectedColor=purple;
  }
  if (mouseX>60 && mouseX<140 && mouseY>260 && mouseY<340){
    selectedColor=blue;
  }
  if (mouseX>60 && mouseX<140 && mouseY>360 && mouseY<440){
    selectedColor=yellow;
  }
  if (mouseX>60 && mouseX<140 && mouseY>460 && mouseY<540){
    selectedColor=pink;
  }
}
