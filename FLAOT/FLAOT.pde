int ballcount = 500;
float [] x= new float [ballcount];
float [] y= new float [ballcount];
float [] sz= new float [ballcount];
float [] speedx= new float [ballcount];
float [] speedy= new float [ballcount];
float [] clr= new float [ballcount];

void setup() {
  size(displayWidth, displayHeight);
  background(0);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i=0; i<ballcount; i++) {
    x[i]=random(0, width);
    y[i]=random(0, height);
    sz[i]=random(0, 10);
    speedx[i]=random(-5, 4);
    speedy[i]=random(-3, 3);
    clr[i]=random(360);
  }
}

void draw() {

  noStroke();
  for (int i=0; i<ballcount; i++) {
    clr[i]++;
    if (clr[i]>360) {
      clr[i]=0;
    }
    fill(clr[i], 75, 100, 75);
    ellipse(x[i], y[i], sz[i], sz[i]);
    x[i]+=speedx[i];
    y[i]+=speedy[i];
    sz[i]=sz[i]+cos(frameCount/10)*5;
    if (x[i]+sz[i]/2 >=width || x[i]-sz[i]/2 <=0) {
      speedx[i]=-speedx[i];
    }
    if (y[i]+sz[i]/2 >=height || y[i]-sz[i]/2 <=0) {
      speedy[i]=-speedy[i];
    }
    if (mousePressed) {
      x[i]=mouseX; 
      y[i]=mouseY;
    }
  }
}

