float locx;
float locy;
float sz;
float velx;
float vely;
float accx;
float accy;

void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  locx=width/2;
  locy=height/3;
  sz=50;
  velx=0;
  vely=1;
  accx=0;
  accy=.05;
}

void draw() {
  background(0);
  ellipse(locx, locy, sz, sz);
  velx+=accx;
  vely+=accy;
  locx+=velx;
  locy+=vely;
  if (locy+sz/2>=height) {
    vely*=-1;
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

