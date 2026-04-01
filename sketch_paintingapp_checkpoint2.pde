//Pallette
color darkpink=#F50083;
color pink=#F563B1;
color lightpink=#F5C6DF;
color white=#FFFFFF;
color green=#7AEDD9;
color beige=#EDECCE;

int toggle;

void setup(){
  size(800,600);
  strokeWeight(5);
  textSize(30);
  
  toggle=1;
}

void draw(){
  background(beige);
  
  fill(darkpink);
  stroke(green);
  rect(550,50,200,100);
 
  if (toggle>0){
  guidelines();
  }
}

void mouseReleased(){
  if (mouseX>550 && mouseX<750 && mouseY>50 && mouseY<150){
    toggle=toggle*-1;
  }
}
    
void guidelines(){
}
