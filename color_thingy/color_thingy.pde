void setup(){
 size(displayWidth, displayHeight); 
 noStroke();
}

void draw(){
  float x = random(width);
  float y = random(height);
  float red = map(x, 0, width, 0, 255);
  float green = map(y, 0, height, 0, 255);
  float blue = map(y, 0, height, 255, 0);
  fill(red, green, blue);
  ellipse(x,y,20,20);
}
