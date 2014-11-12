//declare integer
int x;
int y;
void setup() {
  size(750, 750);
  background(255, 255, 255);
  frameRate(50);
}
void draw() {
  fill(random(255), random(255), random(255));
  noStroke();
 ellipse(x, y, x, 50);
  ellipse(x, y, 50, y);
 
  x=x+2;
  y=y+2;
}

