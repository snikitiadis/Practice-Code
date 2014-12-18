class Particle {
  PVector loc, vel, acc;
  float sz;

  Particle() {
    loc = new PVector(mouseX, mouseY);
    vel = new PVector(random(2, 4), random(-1, 1));
    acc = new PVector(.1, 0);
    sz = 10;
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
  }

  boolean isDead() {
    if (loc.x -sz/2 > width) {
      return true;
    } else {
      return false;
    }
  }
}
