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
  if (dist(100,100,mouseX,mouseY)<50){
    stroke(sakura);
  } else{
    stroke(white);
  }
  fill(teal);
  circle(100,100,80);
  
 if (dist(100,200,mouseX,mouseY)<50){
    stroke(sakura);
  } else{
    stroke(white);
  }
  fill(purple);
  circle(100,200,80);
  
  if (dist(100,300,mouseX,mouseY)<50){
    stroke(sakura);
  } else{
    stroke(white);
  }
  fill(blue);
  circle(100,300,80);
  
  if (dist(100,400,mouseX,mouseY)<50){
    stroke(sakura);
  } else{
    stroke(white);
  }
  fill(yellow);
  circle(100,400,80);
  
  if (dist(100,500,mouseX,mouseY)<50){
    stroke(sakura);
  } else{
    stroke(white);
  }
  fill(pink);
  circle(100,500,80);
  
  //indicator
  stroke(white);
  fill(selectedColor);
  square(300,100,400);
}

void mouseReleased (){
  if (dist(100,100,mouseX,mouseY)<50){
    selectedColor=teal;
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
