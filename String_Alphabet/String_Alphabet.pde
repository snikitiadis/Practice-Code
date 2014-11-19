String [] alphabet = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"};

void setup(){
  size(800,displayHeight);
  background(0);
}

void draw(){
  for(int x=0;x<26;x++){
   text (alphabet[x],10,30+30*x);
  }
}

