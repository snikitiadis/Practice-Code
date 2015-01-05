class Particle {

  //initialize variables for location, velocity, acceleration and size
  PVector loc, vel, acc;
  float sz;

  Particle() {

    //give values to variables

    loc = new PVector(x, mouseY);
    vel = new PVector(random(2, 4), random(-3, 3));
    acc = new PVector(.1, .1);
    sz = 12;
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
  }

  boolean isDead() {
    if (loc.x -sz/2 > width && loc.y -sz/2 > height) {
      return true;
    } else {
      return false;
    }
  }
}

