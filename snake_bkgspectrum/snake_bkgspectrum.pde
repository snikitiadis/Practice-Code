int count = 50;

float [] x = new float[count];
float [] y = new float [count];



void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i=0; i<10; i++) {
    x[i] = random(width);
    y[i] = random(height);
  }
  noStroke();
  noCursor();
}

void draw() {
  background(0);


  x[count-1]=mouseX;
  y[count-1]=mouseY;

  for (int i=0; i<count-1; i++) {
    x[i]=x[i+1];
    y[i]=y[i+1];}
    for (int i=count-1; i>=0; i--) {
fill(map (x[i],0,width,0,360),100,100,100);
      ellipse(x[i], y[i], i*4, i*4);
    }
  
}
