class Player extends Sprite {
  float sizeX = 100;
  float sizeY = 30;
  float playerX = 600;
  float playerY = 600;
  boolean okToBullet = true;
  float timer;

  Player ()
  {
    super();
  }

  void render() {
    fill(white);
    rect(playerX, playerY, sizeX, sizeY);
    rect(playerX+20, playerY + 1, sizeX-40, -20);
    rect(playerX+47, playerY - 15, sizeX-90, -30);
    noFill();
    rect(0, playerY+35, width, playerY+40);
  }

  void update() {
    if (keyPressed && keyCode == LEFT) playerX -= 5;
    if (keyPressed && keyCode == RIGHT) playerX += 5;

    if (keyPressed && keyCode == UP && okToBullet )
    {
      Bullet b = new Bullet(playerX+sizeX/2, playerY -50, speed);
      sprites.add(b);
      timer = 0;
      okToBullet = false;
    }
    timer++;
    if (timer >= 20) {
      okToBullet = true;
    }
    
    
    
    for (int i = 0; i < sprites.size(); i ++)
    {
      Sprite sp = sprites.get(i);
      if (sp instanceof Bomb)
      {
        Bomb b = (Bomb) sp;
        
        if ((b.x >= playerX -25 && b.x <= playerX+ sizeX -25 &&
          b.y >= playerY && b.y <= playerY + sizeY) )
        {
          sprites.remove(b );
          sprites.remove(this);
          lives = 0; 
          println("removed");
        }
      }
    }
  }
}//end Player class