int count=10;



void setup(){
 size(1000,1000); 
  background(random(255),random(255),random(255));
  
}

void draw(){
  noStroke();
 fill(random(255),random(255),random(255));
  count=0;
  while (count<1250){
  ellipse(count,mouseY,20,20);
  count+=25;
}
}
