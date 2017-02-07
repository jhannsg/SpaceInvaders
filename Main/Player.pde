class Player extends Sprite {
  float sizeX = 50;
  float sizeY = 30;
  float playerX = 615;
  float playerY = 610;
  
  
  Player ()
  {
    super();
    x = width/2;
    y = height - 55 ;
    
    
  }
  
  void draw(){
    fill(white);
    rect(playerX, playerY, sizeX, sizeY);
     
  }
  
  void update(){
    if (keyPressed && keyCode == LEFT) playerX -= 5;
    if (keyPressed && keyCode == RIGHT) playerX += 5;
    
  }
  
  
}//end Player class