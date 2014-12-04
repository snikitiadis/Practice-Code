Ball[] bouncer= new Ball[20];


void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i=0; i<bouncer.length; i++) {
    bouncer[i]=new Ball();
  }
}

void draw() {
  background(0);
  for (int i=0; i<bouncer.length; i++) {
    bouncer[i].display();
    bouncer[i].move();
    bouncer[i].bounce();
    for (int j=0; j<bouncer.length; j++) {
      if (i!=j) {

        bouncer[i].collide(bouncer[j]);
      }
    }
  }
}
class Ball {
  PVector loc, vel, acc;
  float sz,speed;
  float hue, sat, bright, alpha;
  Ball() {
    sz=random(100, 200);
    loc = new PVector(random(sz, width-sz), random(height/2));
    vel = new PVector(random(5), random(5));
    acc = new PVector(random(1), random(1));
    hue = random(360);
    sat = 100;
    bright = 100;
    alpha = 70;
  }

  Ball(float tempsz, float tempspeed) {

    sz=tempsz;

    loc = new PVector(random(sz, width-sz), random(sz, height-sz));
    vel = new PVector(5, 5);
    speed=tempspeed;
    vel.mult(speed);
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
    if (loc.x+sz/2 >width || loc.x-sz/2<0) {
      vel.x *=-1;
    }
    if (loc.y +sz/2> height || loc.y-sz/2<0) {

      vel.y = vel.y*=-1;
    }
  }
  void collide(Ball otherball) {
    if (loc.dist(otherball.loc)< sz/2 + otherball.sz/2) {
      vel.normalize();
      vel.setMag(speed);
    }
  }
}

