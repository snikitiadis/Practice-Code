PVector loc;
PVector vel;
PVector acc;
float sz=50;


void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  loc= new PVector(width/2,height/2);
 vel= new PVector(1,20);
}

void draw() {
  noStroke();
fill(frameCount%360,100,100);
  acc= new PVector(random(-.2,.2),random(-.2,.2));
  vel.add(acc);
  vel.limit(5);
  loc.add(vel);

  ellipse(loc.x, loc.y, sz, sz);

  if (loc.x-sz/2 > width) {
    loc.x=-sz/2;
  }

  if (loc.x+sz/2 < 0) {
    loc.x=width + sz/2;
  }

  if (loc.y-sz/2>height) {
    loc.y=-sz/2;
  }

  if (loc.y +sz/2<0) {
    loc.y=height+sz/2;
  }
  
}
