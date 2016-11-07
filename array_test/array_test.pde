int[] y;

void setup() 
{
  size(200, 200);
  y = new int[width];
}

void draw()
{
  background(204);
  //read from end --> not overwriting stuff
  for(int i = y.length - 1; i > 0; i--)
  {
    y[i] = y[i-1];
  }
  //add to the beginning
  y[0] = mouseY;
  //Display pair of values as a line
  for(int i = 1; i < y.length; i++)
  {
    line(i, y[i], i-1, y[i-1]);
  }
}

  
