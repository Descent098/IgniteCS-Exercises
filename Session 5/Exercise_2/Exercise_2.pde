/** 
Make a simple pong game

Requirements:
  - Add a rectangle at the bottom of the screen
  - Make the rectangle move horizontally at the bottom of the screen using keyboard inputs
  - Draw a ball that bounces from all the corners of the screen but the bottom corner
  - Make the ball bounce if it hits the rectangle
*/ 

// ball variables
int ellipse_x_position = 100;
int ellipse_y_position = 200;
int ellipse_radius = 50;
int x_speed = 5;
int y_speed = -5;

// Paddle variables
int rect_x_position = 10; // initial x position of Paddle
int rect_y_position = 900; // initial y position of Paddle 
int rect_length = 200;
int rect_height = 50;
int rect_step = 40; // How much the rectangle moves by

void setup(){
size(1000,1000);
}

void draw(){
  
  background(0);
  ellipse(ellipse_x_position, ellipse_y_position, ellipse_radius, ellipse_radius);
  rect(rect_x_position, rect_y_position, rect_length,rect_height);
  ellipse_x_position += x_speed;
  ellipse_y_position += y_speed;
  
  // if ball hits paddle
  if (collide_paddle()){
  y_speed *= -1;
  }
  // check ellipse collisions
  if (collide_right_wall(ellipse_x_position, ellipse_radius)){
    x_speed *= -1;
  }
  if (collide_left_wall(ellipse_x_position, ellipse_radius)){
    x_speed *= -1;
  }
  
  if (collide_top(ellipse_y_position, ellipse_radius)){
    y_speed *= -1;
  }
  
  if (collide_bottom(ellipse_y_position, ellipse_radius)){
    exit();
  }
  
}

void keyPressed(){
  if (keyCode == RIGHT){
  rect_x_position += rect_step;
  }
  
  if (keyCode == LEFT){
  rect_x_position -= rect_step;
  }
}


// collisions

/**Checks if ball has collided with the paddle*/
boolean collide_paddle(){
  if( 
  (((ellipse_x_position + ellipse_radius) >= rect_x_position  ) && ((ellipse_x_position + ellipse_radius) <= (rect_x_position + rect_length)))
  && 
  ((ellipse_y_position) == rect_y_position)){
  return true;
  }
  else{
  return false; 
  }
  
}


/**Checks if ball has collided with the right wall*/
boolean collide_right_wall(int x_pos, int object_length){
  
  // right wall collision
  if(x_pos >= (width - object_length)){
    return true;
  }
  else{
  return false;
  }
}

/**Checks if ball has collided with the Left wall*/
boolean collide_left_wall(int x_pos, int object_length){
  
  // Left wall collision
  if(x_pos <= (0 + object_length)){
    return true;
  }
  else{
  return false;
  }
}

/**Checks if ball has collided with the top*/
boolean collide_top(int y_pos, int object_height){
  
  // Top collision
  if(y_pos <= (0 + object_height)){
    return true;
  }
  else{
  return false;
  }
}


/**Checks if ball has collided with the bottom*/
boolean collide_bottom(int y_pos, int object_height){
  
  // Bottom collision
  if(y_pos >= (height + object_height)){
    return true;
  }
  else{
  return false;
  }
}
