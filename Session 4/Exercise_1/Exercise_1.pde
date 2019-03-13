/**
Exercise 1:

1. Create an Array with 10 elements, {9.45, 12, 7.14, 32, 19, 11, 9, 13.67, 10.55, 12.29} 
2. Try printing your array with print() and with println(). What happens? Is this what you expected?
3. Find the average of the array values

Hint: Keep track of the sum of the elements! 
    You’ll need a loop!
*/

float[] exercise_data = {9.45, 12, 7.14, 32, 19, 11, 9, 13.67, 10.55, 12.29}; // Initializing Array with values

float sum = 0; // Creating a variable to keep track of the sum of the array values

for (int i = 0; i < exercise_data.length; i++) { // Itterating through each element of the list
  println("Itteration index is " + i + " array value is:"+exercise_data[i]); // Printing value of I and array value per itteration
  sum += exercise_data[i]; // Add current array value to sum
}
float average = sum/exercise_data.length; // Take the average of all array values

println("The sum of the array is:" + sum);
println("The Average of the array values is: " + average);
