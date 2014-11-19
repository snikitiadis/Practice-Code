

void setup(){
  noLoop();
}

void draw(){
  println(quadratic(1,4,1));
}

float [] quadratic (float a, float b, float c){
  float[] result = new float[5];
  result[0]=a;
  result[1]=b;
  result[2]=c;
  result[3]=(-b+(sqrt(sq(b)-4*a*c)))/2*a;
  result[4]=(-b-(sqrt(sq(b)-4*a*c)))/2*a;
  return result;}

