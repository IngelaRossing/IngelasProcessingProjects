int num = 50;
int[] x1 = new int[num];
int[] y1 = new int[num];
int[] x2 = new int[num];
int[] y2 = new int[num];

void setup() {
  size(500, 500);
  noStroke();
  fill(255,102);
}

void draw() {
  background(0);
  for(int i = num-1; i > 0; i--) {
    x1[i] = x1[i-1];
    y1[i] = y1[i-1];
    x2[i] = x2[i-1];
    y2[i] = y2[i-1];
  }
  //add new values to beginning of array
  x1[0] = int( sin(frameCount/10.0)*width/12 + width/3 + width*cos(frameCount/150.0)/5);
  y1[0] = int( cos(frameCount/40.0)*height/2.5 + height/2);
  x2[0] = int( sin(frameCount/9.0)*width/12 + width*2/3 + width*sin(frameCount/150.0)/6);
  y2[0] = int( sin(frameCount/36.0)*height/2.5 + height/2);
  //draw circles 
  float radius = 30;
  for(int i = 0; i < num; i++) {
    radius-= i/25;
    ellipse(x1[i], y1[i], radius, radius);
    ellipse(x2[i], y2[i], radius, radius);
  }
}

