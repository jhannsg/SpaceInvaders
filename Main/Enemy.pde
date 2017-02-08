class Enemy extends Sprite {
  float x;
  float y;
  float sizeX = 60;
  float sizeY = 30;
  int noRows = 3;
  int noCols = 6;
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
  
    for (int i = 0; i < noRows; i++)
    {
      if(i > 0) 
      {
        x = x - (noCols  * 70); //reposition x after first row drawn
      }
      for (int j = 0; j < noCols; j++) 
      {
        sprites.add(new Enemy(x , y, enemySpeed));
        x += 70;
        if(x > 1200)
        {
          x = x - (noCols * 70);
        }
      }
      y += 50;
      
    }
    println("create enemy works");
    println("size of aarray enemy : " + sprites.size());
  }
  
  void render()
  {
    
      //if (alive)
      {
        if(frameCount%100 < 50){
          fill(white);
        }
        else {
        fill(red);
              
        }
          ellipse(x , y , sizeX, sizeY);
        
      }
       
       
   }//end render()
 
 
  void update()
  {
     for(int i = 0 ; i < sprites.size() ; i ++)
    {
      Sprite sp = sprites.get(i);
      if (sp instanceof Bullet)
      {
        Bullet b = (Bullet) sp;
        if ((b.x >= x && b.x <= x+ sizeX &&
              b.y >= y && b.y <= y + sizeY) )
        {
          score +=1;
          sprites.remove(b);
          sprites.remove(this);
          println("killed");
          
        }
      }
     
      if(sp instanceof Enemy )
      {
       Enemy e = (Enemy) sp;
       if( ((e.x >= 1200) || e.x <= 50 ))
       { 
         enemySpeed = -enemySpeed;
         y += 35;
         
       }
      
      }
       
      
    }
    x += enemySpeed; 
   
  }
    
}

  
    
  