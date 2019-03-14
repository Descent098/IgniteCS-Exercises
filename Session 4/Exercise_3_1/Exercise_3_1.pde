/** Exercise 3:

  1. Create a function called drawSnowman() that draws a snowman on the screen
  2. The function should take the following parameters as inputs:
    x-coordinate of the middle of the Snowman’s head
    y-coordinate of the middle of the Snowman’s head
  3 .Call your function drawSnowman() in the draw function multiple times
*/

void setup() {
  size(400, 400);
  noLoop(); // only draw stuff once
  background(50);
  
  // Draw 3 snowmen
  drawSnowman(80, 100);
  drawSnowman(320, 100);
  drawSnowman(200, 200);
}

/**
Required Boilerplate for processing
*/
void draw() {}

void drawSnowman(int x_pos, int y_pos) {
  drawHead(x_pos, y_pos);
  fill(255); // Fill elipses white
  ellipse(x_pos, y_pos+60, 70, 70); // Draw second body peice
  ellipse(x_pos, y_pos+140, 90, 90); // Draw bottom body peice
  
  
}

/*
Draws the head of the snowman
**/
void drawHead(int x_pos, int y_pos){
  fill(255); // Fill head peice white
  ellipse(x_pos, y_pos, 50, 50); // Draw head peice
  
  fill(0); // Fill eyes black
  rect(x_pos-13, y_pos-15, 5, 5); // Draw left eye
  rect(x_pos+7, y_pos-15, 5, 5); // Draw right eye
  
  fill(255, 127, 80); // Fill Carrot orange
  triangle(x_pos-5, y_pos, x_pos+5, y_pos, x_pos, y_pos+15); // Draw Carrot
} // End of drawhead
