//create arraylist with class
ArrayList<Particle> allMyParticles = new ArrayList<Particle>();

float hosex;
PImage grass;
void setup() {

  //load background
  imageMode(CENTER);
  grass = loadImage("grass.jpg");
  size(grass.width, grass.height);

  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
  noCursor();
}

void draw() {
  background(grass);
  fill(random(170, 220), 75, 75);

  //class procedures
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

  fill(120, 94, 90);

  //constrain the hose's x value
  hosex= constrain(mouseX, 0, 200);

  //create hose
  rect(0, mouseY-10, hosex, 20);
}

