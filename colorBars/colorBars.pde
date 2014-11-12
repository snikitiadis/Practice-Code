int barWidth=50;
void setup(){
  size(800,800);
  frameRate(200);
}

void draw(){
for(int x=0; x<=width;x+=barWidth){
 if(mouseX> x && mouseX< x+barWidth){
  fill(random(255),random(255),random(255)); 
 }
 else{
 fill(5,176,252);
 }
 rect(x,0,barWidth,height);
}
} 
