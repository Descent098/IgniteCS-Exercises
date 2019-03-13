/** Exercise 2:

1.Initialize a 2D array to look like the table on the right:
2. Copy this to a second identical 2D array and add 1 to each element using a nested for loop
3. Print out the contents of the second array using another nested for loop. Each element must be printed individually */

int rows = 4;
int columns = 3;

int exercise_data[][] = {{-6,12,35},{43,100,21},{8692,1,-394},{55,0,8}};

int copy_data[][] = new int[columns+1][rows+1]; // need to add 1 to each value  to account for 0th element

// Itterate through original exercise_data list, copy, and add 1 to each value
for (int row =0; row < rows; row++){ 
    for (int column =0; column < columns; column++){
      copy_data[row][column] = exercise_data[row][column] +1;
    }
    
}

// Itterate and print original array
println("Here is the original array");
for (int row =0; row < rows; row++){
    println("\nRow #"+ (row+1) + ": " );
    for (int column =0; column < columns; column++){
      print(exercise_data[row][column] + "  ");
    }
}

// Itterate and print copied and modified array
println("\n\nHere is the modified array");
for (int row =0; row < rows; row++){
    println("\nRow #"+ (row+1) + ": " );
    for (int column =0; column < columns; column++){
      print(copy_data[row][column] + "  ");
    }
}
