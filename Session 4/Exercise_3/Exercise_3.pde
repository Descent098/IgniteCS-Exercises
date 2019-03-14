/** Exercise 3:
Let’s build a 6x6 Checkerboard using arrays!
Hint: Use a nested for loop 
*/

int length_width = 100; // the height and width of the square
int rows = 8;
int columns = 8;
size(700, 700);
boolean[][] squares = new boolean[columns][rows]; // Initializing list used to select square color


  for (int row =0; row < rows; row++){ 
      for (int column =0; column < columns; column++){
        
        // Assigning values to true (white squares) or false (black squares) based on location
        if ((column % 2 != 0 && row % 2 == 0) || (column % 2 == 0 && row % 2 != 0) ){ // if on an even column
        squares[row][column] = true;
      }
        else{ // if on an odd column
        squares[row][column] = false;
      } 
        
      }// end of column for loop
  } // end of row for loop

  for (int row =0; row < rows; row++){
      for (int column =0; column < columns; column++){
        
        // Pick which color to fill rectangle with
        if (squares[row][column] == true){
          fill(0); // fill square black
      }
        else{
        fill(255); // Fill square white
      }
        
        rect(row*(width/rows), column*(height/columns), length_width, length_width); // Draw rectangle
      } // end of column for loop
  }// end of row for loop
      
