float a=2;
float b=1;
float c=1;
float d=1;
float x=1;
float y=1;



void setup() {
  size(500, 500);
  frameRate(500);
  background(155, 255, 155);
  noStroke();
}

void draw() {
  fill(random(255),random(255),random(255));
  ellipse(a, c, 25, 25);
  a=a+b;
  c=c+d;
  if (a>=width) {
    b=-1;
  }

  if (a<=0) {
    b=1;
  }

  if (c>=height) {
    d=-1;
  }

  if (c<=0) {
    d=.5;
  }
}

