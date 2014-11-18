float locx, locy;
float velx, vely;
float accx, accy;
float sz=50;


void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  locx=width/2;
  locy=height/2;
  velx=0;
  vely=0;
 
}

void draw() {
  noStroke();
fill(frameCount%360,100,100);
  velx+=accx;
  vely+=accy;
  velx=constrain(velx, -5, 5);
  vely=constrain(vely, -5, 5);
  locx+=velx;
  locy+=vely;

  ellipse(locx, locy, sz, sz);

  if (locx-sz/2 > width) {
    locx=-sz/2;
  }

  if (locx+sz/2 < 0) {
    locx=width + sz/2;
  }

  if (locy-sz/2>height) {
    locy=-sz/2;
  }

  if (locy +sz/2<0) {
    locy=height+sz/2;
  }
}

void mousePressed(){
  accx=random(-.1, .1);
  accy=random(-.5, .99);
}
