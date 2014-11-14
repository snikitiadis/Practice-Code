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
  velx=1;
  vely=1;
  accx=.03;
  accy=.05;
}

void draw(){
  background(0);
  fill(map (locy,0,height,0,360),100,100,100);
  ellipse(locx,locy,sz,sz);
  velx+=accx;
  vely+=accy;
  locx+=velx;
  locy+=vely;
  if(locy+sz/2>=height){
    locy=height-sz/2;
   vely=-abs(vely); 
  }
  if(locx+sz/2>=width){
    locx=width-sz/2;
   velx=-abs(velx); 
  }
}
