void setup() {
  size(800,800);
}


void draw() {
background(255);
  for (int x=0; x<=width; x+=15) {
    line(x, 0, width, x);
    line(0, x, x, height);
  }
  fill(7,157,224);
  ellipse(width/2,height/2,250,250);
  fill(0);
  ellipse(width/2,height/2,100,100);
  if(mousePressed==true){
  background(0);
  }
}

