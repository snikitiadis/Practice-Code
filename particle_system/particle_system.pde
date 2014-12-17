ArrayList<Particle> allMyParticles = new ArrayList<Particle>();
int count = 20;

float [] x = new float[count];
float [] y = new float [count];
PImage grass;
void setup() {
  
  imageMode(CENTER);
  grass = loadImage("grass.jpg");
  size(grass.width, grass.height);
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
   for (int i=0; i<10; i++) {
    x[i] = random(width);
    y[i] = random(height);
  }
}

void draw() {
  background(grass);
  fill(random(170,220),75,75);
  if (mousePressed) {
    allMyParticles.add(new Particle());
  }
  for (int i = allMyParticles.size ()-1; i >= 0; i--) {
    Particle currentParticle = allMyParticles.get(i);
    currentParticle.display();
    currentParticle.move();
    if (currentParticle.isDead()) {
      allMyParticles.remove(i);
    }
  }
  fill(120,97,88);
    x[count-1]=mouseX;
  y[count-1]=mouseY;

  for (int i=0; i<count-1; i++) {
    x[i]=x[i+1];
    y[i]=y[i+1];}
    for (int i=count-1; i>=0; i--) {

      ellipse(x[i], y[i], i*4, i*4);
    }

}

class Particle {
  PVector loc, vel, acc;
  float sz;

  Particle() {
    loc = new PVector(mouseX, mouseY);
    vel = new PVector(random(2, 4), random(-3, 3));
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

