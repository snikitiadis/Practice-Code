
void setup(){
 size(500,500); 
}


void draw(){
 for(int x=0;x<=width;x+=30){
  for(int y=0;y<=height;y+=30){
    fill(0,random(100,200),random(100,255));
    if(mouseX>x && mouseX<x+30 && mouseY>y && mouseY<y+30){
      fill(23,243,34);
    }
   rect(x,y,30,30);
  } 
 }
 
}
