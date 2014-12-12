ArrayList<BouncyBall> balls = new ArrayList<BouncyBall>();
int maxBalls = 250;

void setup() {
  size(displayWidth,displayHeight);
  colorMode(HSB,360,100,100,100);
  textSize(50);
  background(0);
}

void draw() {
  
  balls.add(new BouncyBall(30));
  background(150,75,100);
  fill(300,75,100);
  
  for (int i = 0; i < balls.size (); i++) {
    BouncyBall b = balls.get(i);    
    b.display();
    b.move();
    b.wallBounce();
  }
  
 
  
  if (balls.size() > maxBalls) {
    balls.remove(0);
  }
}
