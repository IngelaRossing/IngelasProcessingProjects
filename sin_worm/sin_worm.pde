// Changable variables
int n = 2; // changes nr of ocillations 
float speed = 0.12;

// No. :<
int num = 50;
int[] x = new int[num];
int[] y = new int[num];

void setup() {
  size(300, 600); //size of window
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
  x[0] = int( sin(frameCount*speed)*width/6 + width/2);
  y[0] = int( cos(frameCount*speed/(1+2*n))*height/2.5 + height/2);
  
  //draw circles 
  float radius = 30;
  for(int i = 0; i < num; i++) {
    radius-= i/25;
    ellipse(x[i], y[i], radius, radius);
  }
}

