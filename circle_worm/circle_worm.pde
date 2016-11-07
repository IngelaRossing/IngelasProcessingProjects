int num = 50;
int[] x = new int[num];
int[] y = new int[num];

void setup() {
  size(500, 500);
  noStroke();
  fill(255,102);
}

void draw() {
  background(0);
  for(int i = num-1; i > 0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
  }
  //add new values to beginning of array
  x[0] = mouseX;
  y[0] = mouseY;
  //draw circles 
  float radius = 30;
  for(int i = 0; i < num; i++) {
    radius-= i/25;
    ellipse(x[i], y[i], radius, radius);
  }
}

