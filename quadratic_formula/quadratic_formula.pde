//quadratic formula

void setup() {
}

void draw() {
  println(qpos(1, 4, 1));
  println(qneg(1, 4, 1));
}

float qpos(float a, float b, float c) {
  float result;
  result= (-b+(sqrt(sq(b)-4*a*c)))/2*a;
  return result;
}

float qneg(float a, float b, float c) {
  float result;
  result= (-b-(sqrt(sq(b)-4*a*c)))/2*a;
  return result;
}

