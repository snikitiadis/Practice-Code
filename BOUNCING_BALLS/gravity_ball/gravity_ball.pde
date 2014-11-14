float locx;
float locy;
float sz;
float velx;
float vely;
float accx;
float accy;

void setup(){
  size(displayWidth,displayHeight);
  colorMode(HSB,360,100,100,100);
  locx=width/2;
  locy=height/3;
  sz=50;
  velx=0;
  vely=1;
  accx=0;
  accy=.25;
}

void draw(){
  background(0);
  ellipse(locx,locy,sz,sz);
  velx+=accx;
  vely+=accy;
  locx+=velx;
  locy+=vely;
  if(locy+sz/2>=height){
   vely=-(vely); 
  }
}
