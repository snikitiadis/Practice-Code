int a=1;
int b=1;
int c=1;
int d=1;



void setup(){
  size(800,800);
  frameRate(500);
}



void draw(){
  ellipse(a,c,25,25);
  a=a+b;
  c=c+d;
  
  if(a>=width){b=-1;}
  
  if(a<=0){b=1;}
  
  if(c>=height){d=-1;}
  
  if(c<=0){d=2;}
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
