class Enemy extends Sprite {
  float x;
  float y;
  int noRows = 4;
  int noCols = 10;
  float enemySpeed; 
  
  
  Enemy()
  {}
  
  Enemy (float x, float y, float enemySpeed)
  {
     this.x = x;
     this.y = y;
     this.enemySpeed = enemySpeed;
  }
  
  public void createEnemy()
  { 
  
    for (int i = 1; i <= noRows; i++)
    {
      if(noRows > 1) 
      {
        x = x - noCols * 60; //reposition x
      }
      for (int j = 1; j <= noCols; j++) 
      {
        sprites.add(new Enemy(x , y, enemySpeed));
        x += 60;
      }
      y += 50;
      
    }
    println("create enemy works");
    println("size of aarray enemy : " + sprites.size());
  }
  
  void render()
  {
    
      if (alive)
      {
        if(frameCount%100 < 50){
          fill(white);
        }
        else {
        fill(red);
              
        }
 
         ellipse(x , y , sizeX, sizeY);
         println("drawEnemy okay");
            
       } 
       
   }//end render()
 
 
  void update()
  {
    x += enemySpeed;
  }
  
  void drop()
  {
    for(int i =  sprites.size()-1 ; i >= 0 ; i--)
    {
        sprites.get(i).speed = -sprites.get(i).speed;
        sprites.get(i).y += 35;
      
    }
  }
  
  
    
  
}