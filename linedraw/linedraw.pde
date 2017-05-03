int[] y;
int[] x;
int lines = 7; //Number of lines drawn per frame
int spacing = 4; //spacing between drawn lines
float linelength;

void setup() 
{
  size(1000, 1000);
  y = new int[spacing*lines];
  x = new int[spacing*lines];
  
  background(0);
}

void draw()
{
  
  //read from end --> not overwriting stuff
  for(int i = y.length - 1; i > 0; i--)
  {
    y[i] = y[i-1];
    x[i] = x[i-1];
  }
  //add to the beginning
  y[0] = mouseY;
  x[0] = mouseX;
  
  if(keyPressed)
  {
    switch(key)
    {
      case 'b':
          background(0);
          break;
      case 'w':
          background(255);
          break;
      default: break;
    }
  }
      
          
    
  if(mousePressed) 
  {
    //Display pair of values as a line
    for(int i = spacing; i < y.length; i+=spacing)
    {
      //stroke(i*255/y.length);
      linelength = 255*(x[0]-x[i-1])*(x[0]-x[i-1])+(y[0]-y[i-1])*(y[0]-y[i-1])/width;
      stroke(255-int(linelength));
      line(x[0], y[0], x[i-1], y[i-1]);
    }
  }
}

