int x=0;
int y=1;
void setup() {
  size(1000, 500);
  frameRate(400);
  fill(random(255), random(255), random(255));
}

void draw() {
  background(100, 175, 199); 
  ellipse(x, height/2, 50, 50);
 
  x=x+y;
  if (x>width) {
    y=-1;
  }
  if (x==0) {
    y=1;
  }

}

