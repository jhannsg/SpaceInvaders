class Enemy extends Sprite {
  float x;
  float y;
  float sizeX = 50;
  float sizeY = 30;
  int noRows = 10;
  int noCols = 4;
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
        enemies.add(new Enemy(i*posX , j*posY));
        posX += 60;
      }
      posY += 50;
      
    }
    println("create enemy works");
    println("size of aarray enemy : " + enemies.size());
  }
  
  void drawEnemy(float x, float y)
  {
    for(int i = 1; i <= noRows; i++)
    {
      for(int j = 1; j <= noCols; j++)
      {
        if (alive)
          {
            fill(255,255,255);
            ellipse(x*i/2 , y*j/2, sizeX, sizeY);
            println("drawEnemy okay");
          }
      }
        
    }
      
    }
    
  
  
  
  
}