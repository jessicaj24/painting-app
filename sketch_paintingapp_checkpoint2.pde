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

void tactile(int x,int y,int r){
  if (dist(x,y,mouseX,mouseY)<r){
    stroke(sakura);
  } else{
    stroke(white);
  }
  fill(pink);
  rect(60,460,80,80);
}

void mouseReleased (){
  if (dist(100,100,mouseX,mouseY)<50){
    selectedColor=teal;
    stroke(teal);
  }
  if (dist(100,200,mouseX,mouseY)<50){
    selectedColor=purple; 
  }
  if (dist(100,300,mouseX,mouseY)<50){
    selectedColor=blue; 
  }
  if (dist(100,400,mouseX,mouseY)<50){
    selectedColor=yellow; 
  }
  if (dist(100,500,mouseX,mouseY)<50){
    selectedColor=pink; 
  }
}
