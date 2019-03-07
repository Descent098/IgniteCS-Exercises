/**
Exercise 3

Part A:
Write a program to make the circle move horizontally toward the right-hand side of the screen until it goes out of the window and disappears.
**/

int x_position;
int y_position;

void setup(){
   size(400,500);
}

void draw(){
  background(00000); // Sets/Resets background color at start/end of iteration
  ellipse(x_position, y_position, 100,100);
  x_position ++; // Increment x position to move circle right
}
