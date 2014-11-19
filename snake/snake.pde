int count = 50;

float [] x = new float[count];
float [] y = new float [count];



void setup() {
  size(1000, 1000);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i=0; i<10; i++) {
    x[i] = random(width);
    y[i] = random(height);
  }
  
}

void draw() {
  background(0);
fill(frameCount%360,100,100,100);
stroke(360, 100, 100, 100);
  x[count-1]=mouseX;
  y[count-1]=mouseY;

  for (int i=0; i<count-1; i++) {
    x[i]=x[i+1];
    y[i]=y[i+1];}
    for (int i=count-1; i>=0; i--) {

      ellipse(x[i], y[i], i*4, i*4);
    }
  
}

