Ball[] g= new Ball[100];


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
    sz=random(10, 100);
    loc = new PVector(random(sz, width-sz), random(height/2));
    vel = new PVector(0, 0);
    acc = new PVector(0, .1);
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
    vel.add(acc);
    loc.add(vel);
  }

  void bounce() {
    if (loc.y > height - sz/2) {
      loc.y = height - sz/2;
      vel.y = -abs(vel.y);
    }
  }
}

