PVector loc,vel,acc,mouse;

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
  mouse=new PVector(mouseX,mouseY);
  background(0);
  vel.add(acc);
  loc.add(vel);
  
  if(loc.dist(mouse) <sz/2){
   fill(310,70,100); 
   if (loc.x < mouse.x) {     
      vel.x = -abs(vel.x);      
    } else {                   
      vel.x = abs(vel.x);       
    }
    if (loc.y < mouse.y) {     
      vel.y = -abs(vel.y);
    } else {
      vel.y = abs(vel.y);
    }
  }else{
    fill(150,100,100);}
    
    ellipse(loc.x,loc.y,sz,sz);
    
    if(loc.x +sz/2>width||loc.x -sz/2<0){
     vel.x *=-1; 
    }
    if(loc.y +sz/2>height||loc.y-sz/2<0){
     vel.y*=-1; 
    }
    
    ellipse(mouse.x,mouse.y,10,10);
}
