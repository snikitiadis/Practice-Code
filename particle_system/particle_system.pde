ArrayList<Particle> allMyParticles = new ArrayList<Particle>();


void setup() {
  noStroke();
  colorMode(HSB,360,100,100,100);
  size(800, 600);
}

void draw() {
  if (mousePressed) {
    allMyParticles.add(new Particle());
  }
  background(0);
  for (int i = allMyParticles.size ()-1; i >= 0; i--) {
    Particle currentParticle = allMyParticles.get(i);
    currentParticle.display();
    currentParticle.move();
    if (currentParticle.isDead()) {
      allMyParticles.remove(i);
    }
  }
}

class Particle {
  PVector loc, vel, acc;
  float sz;

  Particle() {
    loc = new PVector(mouseX, mouseY);
    vel = new PVector(random(2, 4), random(-3,3));
    acc = new PVector(.1,0);
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

