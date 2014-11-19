//ball
int x;
int y;
int sz=50;
int speedx=10;
int speedy=10;

//left padle variables
int lx=5;
int ly;
int lwidth=30;
int lheight=250;

//right paddle variables
int rx=35;
int ry;
int rwidth=30;
int rheight=250;

//score
int scoreL;
int scoreR;

void setup() {
  size(displayWidth, displayHeight); 
  y=height/2;
  x=width/2;
}

void draw() {
  background(100);
  fill(0);
  ellipse(x, y, sz, sz);
  x=x+speedx;
  y=y+speedy;

  //ball bouncing
  if (x+sz/2 >=width) {
    x=width/2;
    speedx=-speedx;
    scoreL++;
  }
  if (y+sz/2 >height) {
    speedy=-speedy;
  }
  if (x-sz/2 <=0) {
    x=width/2; 
    speedx=-speedx;
    scoreR++;
  }
  if (y-sz/2 <0) {
    speedy=-speedy;
  }

  //left paddle

  fill(255, 0, 0);
  ly=constrain(ly, 0, height-lheight);
  rect(lx, ly, lwidth, lheight, 15);
  ly=mouseY;
  if (x-sz/2<lx+lwidth && y<ly+lheight && y>ly) {
    speedx=-speedx;
  }

  //right paddle

  fill(0, 0, 255);
  rect(width-rx, ry, rwidth, rheight, 15);
  if (keyPressed) {
    if (key==CODED) {
      if (keyCode== DOWN) {
        ry=ry+25;
      }
      if (keyCode== UP) {
        ry=ry-25;
      } else {
        ry=ry;
      }
    }
  }
  ry=constrain(ry, 0, height-rheight);
  if (x+sz/2>width-rx && y<=ry+rheight && y>ry) {
    speedx= -speedx;
  }

  //scores 
  textSize(35);
  fill(0);
  text("SCORE", displayWidth/2-30, 45);
  textSize(30);
  fill(255, 0, 0);
  text(scoreL, displayWidth/2-150, 55);
  textSize(30);
  fill(0, 0, 255);
  text(scoreR, displayWidth/2+150, 55);

  //end game
  if (scoreR>=10) {
    background(0);
    textSize(240);
    fill(random(255), random(150), random(255));
    text("GAME OVER", width/2-700, 500);
    fill(0, 0, 255);
    textSize(185);
    text("PLAYER 2 WINS", width/2-670, height/2+250);
    speedx=0;
    speedy=0;
  }
  if (scoreL>=10) {
    background(0);
    textSize(240);
    fill(random(255), random(150), random(255));
    text("GAME OVER", width/2-700, 500);
    fill(255, 0, 0);
    textSize(185);
    text("PLAYER 1 WINS", width/2-670, height/2+250);
    speedx=0;
    speedy=0;
  }
}

