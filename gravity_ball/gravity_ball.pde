Ball[] g= new Ball[20];


void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i=0; i<g.length; i++) {
    g[i]=new Ball();
  }
}

void draw() {
  background(0);
  for (int i=0; i<g.length; i++) {
    g[i].display();
    g[i].move();
    g[i].bounce();
  }
}

class Ball {
  PVector loc, vel, acc;
  float sz;
  float hue, sat, bright, alpha;
  Ball() {
    sz=random(100,200);
    loc = new PVector(random(sz, width-sz), random(height/2));
    vel = PVector.random2D();
    acc = PVector.random2D();
    hue = random(360);
    sat = 100;
    bright = 100;
    alpha = 70;
  }

  Ball(float tempsz, float tempx) {

    sz=tempsz;

    loc = new PVector(tempx, sz);
    vel = new PVector(0, 0);
    acc = new PVector(0, .1);
    hue = random(360);
    sat = 100;
    bright = 100;
    alpha = 70;
  }

  void display() {
    fill(hue, sat, bright, alpha);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    
    loc.add(vel);
  }

  void bounce() {
    if (loc.x+sz/2 >width || loc.x-sz/2<0){
    vel.x *=-1;
    }
    if (loc.y +sz/2> height || loc.y-sz/2<0) {
      
      vel.y = vel.y*=-1;
    }
  }
}

