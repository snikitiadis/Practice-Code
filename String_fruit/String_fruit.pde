String [] fruit = {"apple","banana","cherry","orange","papaya","peach","pear","kiwi","mango","apricot","coconut","lime","lemon","strawberry","blueberry","fig","grape"};

void setup(){
  size(800,displayHeight);
  background(0);
  textSize(35);
}

void draw(){
  for(int x=0;x<17;x++){
   text (fruit[x],10,40+40*x);
  }
}

