/**
Exercise 3

Part C:
Write a program to make the circle gradually change from one colour to another colour
**/
int x_position = 200;
int y_position = 250;
int radius = 100;

int r_colour = 0; // Current Red value
int g_colour = 0; // Current Green Value
int b_colour = 0; // Current Blue value

void setup(){
  size(400,500);
  ellipseMode(RADIUS);
  background(255);
}

void draw(){
  noStroke();
  fill(r_colour, g_colour, b_colour);
  ellipse(x_position, y_position, radius,radius);
  
  /** uncomment whichever colour/colour combination you want
  i.e. for purple leave red and blue uncommented
  */
  
  r_colour++;
  b_colour++;
  //g_colour++;
}
