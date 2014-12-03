Ball[] g= new Ball[100];

void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i=0; i<g.length; i++) {
    g[i]=new Ball();
  }
  fill(map(360
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
  Ball() {
    sz=50;
    loc = new PVector(random(sz, width-sz), random(height/2));
    vel = new PVector(0, 0);
    acc = new PVector(0, .1);
  }
  void display() {
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

