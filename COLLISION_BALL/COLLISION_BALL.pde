PVector loc,vel,acc;
float sz=100;

void setup(){
  size(displayWidth,displayHeight);
  colorMode(HSB,360,100,100,100);
  loc= new PVector(width/2,height/2);
  vel= PVector.random2D();
  acc=new PVector();
  noCursor();
}

void draw(){
  background(0);
  vel.add(acc);
  loc.add(vel);
  
  if(dist(mouseX,mouseY,loc.x,loc.y) <sz/2){
   fill(270,70,100); 
  }else{
    fill(150,100,100);}
    
    ellipse(loc.x,loc.y,sz,sz);
    
    if(loc.x +sz/2>width||loc.x -sz/2<0){
     vel.x *=-1; 
    }
    if(loc.y +sz/2>height||loc.y-sz/2<0){
     vel.y*=-1; 
    }
    
    ellipse(mouseX,mouseY,10,10);
}
