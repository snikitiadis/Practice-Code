int x=500;
int y=500;

void setup(){
 size(500,500); 
 background(7,195,245);
}

void draw(){
  noStroke();
  while(x>5){
  ellipse(width/2,height/2,x,y);
  fill(random(255),random(255),random(255));
  x=x-10;
  y=y-10;
  
  }
  
  
  
  
}
