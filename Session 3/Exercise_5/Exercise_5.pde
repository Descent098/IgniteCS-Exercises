/**
Excersize 5

Requirements:
1. Draw a dartboard on the screen (Hint: Use a loop to draw all of the circles at different radii instead of calling the ellipse function a bajillion times in your code!)
2. Challenge: experiment with different colors! (Hint: Try the rand() function)
*/

int rings = 10; // How many rings to draw
int step = 100; // How much to decrease the radius by on each iteration

void setup(){
  size(2000, 2000);
  background(0);
  ellipseMode(RADIUS);
}

void draw(){
  // Setting/Resetting variables on each iteration
  
  int count = 0; //Iteration counter used to determine when to stop iterating
  int radius = 1100; //Radius of circle
  int x_pos = int(random(width-radius)); // x position of circle
  int y_pos = int(random(height-radius)); // y position of circle
  
  delay(2000); // Making each iteration pause for 2 seconds before starting
  
  
  while(count <= rings){
  // Generate random fill color per circle
  fill( 
  int(random(255)), // Generate random Red value
  int(random(255)), // Generate random Blue value
  int(random(255))  // Generate random Green value
  ); 
  
  ellipse(x_pos, y_pos, radius, radius);
  radius -=step; // Make radius smaller so next circle can be drawn inside previous one
  count ++;
  
  } // end of while loop
} // end of draw function
