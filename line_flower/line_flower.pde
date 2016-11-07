 void setup() {
       size(400, 400);
       stroke(255);
       background(192, 64, 0);
     } 


     void draw() {
       if(mousePressed) {
         
         line(150, 250, mouseX, mouseY);
       }
     }
     
