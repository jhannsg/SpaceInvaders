class Player extends Sprite {
  float sizeX = 50;
  float sizeY = 30;
  float playerX = 600;
  float playerY = 600;
  boolean okToBullet = true;
  float timer;
  
  Player ()
  {
    super();
  }
  
  void render(){
    fill(white);
    rect(playerX, playerY, sizeX, sizeY);
    rect(0, playerY+20, width, playerY+25);
     
  }
  
  void update(){
    if (keyPressed && keyCode == LEFT) playerX -= 5;
    if (keyPressed && keyCode == RIGHT) playerX += 5;
    
    if (keyPressed && keyCode == UP && okToBullet )
    {
      Bullet b = new Bullet(playerX+sizeX/2, playerY, speed);
      sprites.add(b);
      timer = 0;
      okToBullet = false;
    }
      timer++;
        if (timer >= 20) {
            okToBullet = true;
        }
    
    
   
  }
  
  void drop()
  {}
  
}//end Player class