class Brick{
  // Per brick values
  int fill_value;
  int health;
  int x_position;
  int y_position;
  
  //Global brick Values
  int brick_length = 200;
  int brick_height = 50;
 
  // constructor
   Brick(int fv, int hp, int x, int y){
     fill_value = fv;
     health = hp; 
     x_position = x;
     y_position = y;
   }
   
   // TODO:
   
   // Collisions with ball


}

Brick[] create_row(int amount){
  Brick[] row = new Brick[amount];
  for (int i = 0; i < amount; i++) {
  row[i] = new Brick(12,3);  
  }
 return row;
 }
