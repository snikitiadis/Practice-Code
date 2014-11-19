void setup(){
  size(500,500);
  frameRate(12);
  background(random(255),random(255),random(255));
}

void draw(){
  stroke(random(255),random(255),random(255));
  strokeWeight(random(0,20));
 line(mouseX,mouseY,random(500),random(500));
 
}
