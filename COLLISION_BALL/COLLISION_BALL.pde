int count=100;
PVector[] loc= new PVector [count];
PVector[] vel= new PVector [count];
PVector[] acc= new PVector [count];
float[] sz= new float[count];
float[] mass = new float[count];
int minDia=10;
int maxDia=50;

void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i=0; i<count; i++) {
    sz[i] = random(10, 50);           
    loc[i] = new PVector(random(sz[i], width-sz[i]), random(sz[i], height-sz[i]));  
    vel[i] = PVector.random2D();       
    acc[i] = new PVector(0, 0);
    mass[i] = map(sz[i], minDia, maxDia, .1, 1.5);
  }
}

void draw() {
  background(0);

  for (int i = 0; i < count; i++) {     
    vel[i].add(acc[i]);
    loc[i].add(vel[i]);

    for (int j = 0; j < count; j++) {
      if (i!=j) {
        if (loc[i].dist(loc[j]) < sz[i]/2 + sz[j]/2) { 
          vel[i] = PVector.sub(loc[i], loc[j]);      
          vel[i].normalize();                       
          vel[i].div(mass[i]);
        }
      }
    }
    fill(map(vel[i].x, -4, 4, 0, 360), 100, 100, 90);
    ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);
    if (loc[i].x + sz[i]/2 > width || loc[i].x - sz[i]/2 < 0) {
      vel[i].x *= -1;
    }
    if (loc[i].y + sz[i]/2 > height || loc[i].y - sz[i]/2 < 0) {
      vel[i].y *= -1;
    }
  }
}

