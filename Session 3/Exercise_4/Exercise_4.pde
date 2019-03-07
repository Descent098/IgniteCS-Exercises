/** Exercise 4

Requirements:
1. Use a for loop to display 5 evenly spaced squares (Hint: the x position will depend on the loop counter)

2. BONUS: Don’t let your squares go off the screen! If there are too many, put them on new lines
(Hint: You can do this with if statements or with the modulus operator %)

**/

int lw = 100; //The length & width values of the squares
int step = 200; // the value to increment the x and y positions by to create the grid 
int x_padding = 25; // The horizontal spacing between squares and the next element
int y_padding = 50; // The vertical spacing between squares and the next element

void setup(){
  size(1000, 1000);
}

void draw(){
  background(0);
  int x_pos = 0+x_padding; // Setting x coordinate to starting position and resetting after loop
  int y_pos = 0+y_padding; // Setting y coordinate to starting position and resetting after loop
  while((x_pos <= width) || (y_pos <= height)){
    
    // draw squares in a line horizontally
    if(x_pos < (width-lw)){
    rect(x_pos, y_pos, lw, lw);
    x_pos += step;
    }
    
    //move down a row, aka increment y value and reset x
    else if (x_pos >= (width-lw)){
    x_pos = 0+x_padding;
    y_pos += step;
    rect(x_pos, y_pos, 100, 100);
    }

   
  } // End of While loop
} //end of draw function 
