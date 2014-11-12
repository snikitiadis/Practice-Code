float x=2;
float y=2;
float a=0;
float b=5;
float c=.5;
float d=2;
float e=.66;
float f=2;


void setup() {
  size(1000, 700);
  frameRate(250);
   
}

void draw() {
 background(0, 191, 247);
  noStroke();
  fill(x, 255, y);
  ellipse(x, a, 55, 55);
 
  ellipse(c, e, 55, 55);
  x=x+y;
  a=a+b;
  c=c+d;
  e=e+f;

  //ball1
  if (x>=width) {
    y=-.5;
  }
  if (x<=0) {
    y=1;
  }
  if (a>=height) {
    b=-.75;
  }
  if (a<=0) {
    b=1;
  }

  //ball2
  if (c>=width) {
    d=-.75;
  }
  if (c<=0) {
    d=1;
  }
  if (e>=height) {
    f=-.25;
  }
  if (e<=0) {
    f=.75;
  }
}

