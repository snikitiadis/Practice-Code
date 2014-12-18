ArrayList<Particle> allMyParticles = new ArrayList<Particle>();
PVector[] loc = new PVector[50];
PImage grass;
void setup() {

  imageMode(CENTER);
  grass = loadImage("grass.jpg");
  size(grass.width, grass.height);
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
  for (int i = 0; i < loc.length; i++) {
    loc[i] = new PVector(width/2, height/2);
  }
}

void draw() {
  background(grass);
  fill(random(170, 220), 75, 75);
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
  fill(120, 97, 88);
  loc[loc.length-1].set(mouseX, mouseY);
  for (int i = 0; i < loc.length-1; i++) {
    loc[i].set(loc[i+1]);
  }
  for (int i = loc.length-1; i >= 0; i--) {
    ellipse(loc[i].x, loc[i].y, i*2, i*3);
  }
}


