class Enemy extends Sprite {
  float x;
  float y;
  float sizeX = 60;
  float sizeY = 30;
  int noRows = 4;
  int noCols = 10;
  float enemySpeed = 1; 
  boolean alive = true;
  
  Enemy()
  {}
  
  Enemy (float x, float y)
  {
     this.x = x;
     this.y = y;
  }
  
  public void createEnemy()
  {
    float posY = 70;
  
    for (int i = 1; i <= noRows; i++)
    {
      float posX = 50;
      for (int j = 1; j <= noCols; j++) 
      {
        enemies.add(new Enemy(posX , posY));
        posX += 60;
      }
      posY += 50;
      
    }
    println("create enemy works");
    println("size of aarray enemy : " + enemies.size());
  }
  
  void drawEnemy()
  {
    
         if (alive)
          {
            fill(255,255,255);
            ellipse(x , y , sizeX, sizeY);
            println("drawEnemy okay");
          }  
   }//end drawEnemy()
 
  void update()
  {
    x += enemySpeed;
  }
  
  void drop()
  {
    for(int i = 0; i < enemies.size(); i++)
    {
        enemies.get(i).enemySpeed = -enemies.get(i).enemySpeed;
        enemies.get(i).y += 35;
      
    }
  }
  
  
    
  
}