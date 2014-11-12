int x=100;
int y=100;
int x2=100;
int y2=100;

void setup(){
size(800,800);
noCursor();
}




void draw(){
  background(227,7,255);
 
 x=mouseX;
 y=mouseY;
 
  
//body
fill(255,241,31);
stroke(0,0,0);
rect(x-50,y-50,100,150,55);

//eye
noStroke();
fill(96,96,96);
ellipse(x,y,60,60);
fill(255,255,255);
ellipse(x,y,45,45);
fill(97,47,11);
ellipse(x,y,20,20);
fill(0,0,0);
ellipse(x,y,10,10);
fill(0,0,0);
rect(x-50,y-10,23,15);
rect(x+28,y-10,23,15);

//mouth
stroke(0,0,0);
line(x-30,y+40,x+20,y+50);

//arms
stroke(255,241,31);
strokeWeight(10);

line(x2-70,y2+40,x-50,y+40);
line(x+50,y+40,x2+70,y2+40);

//clothes
stroke(0);
strokeWeight(1);
rotate(0);
fill(23,66,150);
rect(x-50,y+60,100,40,0,0,100,100);

//legs
fill(23,66,150);
rect(x-25,y+100,15,25);
rect(x+10,y+100,15,25);

//feet
fill(0,0,0);
rect(x-25,y+125,15,10,10);
rect(x+10,y+125,15,10,10);

//buttons
ellipse(x-15,y+70,7,7);
ellipse(x+20,y+70,7,7);

if(mousePressed==true){
  x2=mouseX;
  y2=mouseY;

}
}
