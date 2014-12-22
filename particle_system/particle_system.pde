ArrayList<Particle> allMyParticles = new ArrayList<Particle>();

float x;
PImage grass;
void setup() {

  imageMode(CENTER);
  grass = loadImage("grass.jpg");
  size(grass.width, grass.height);
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);

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
  fill(116, 94, 59);
 
 x= constrain(mouseX,0,200);
  rect(0, mouseY-25, x, 50,0,50,50,0);
}
