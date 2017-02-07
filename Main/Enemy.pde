class Enemy extends Sprite {
  float x;
  float y;
  int noRows = 3;
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
  
    for (int i = 0; i < noRows; i++)
    {
      if(i > 0) 
      {
        x = x - (noCols  * 60); //reposition x after first row drawn
      }
      for (int j = 0; j < noCols; j++) 
      {
        sprites.add(new Enemy(x , y, enemySpeed));
        x += 60;
        if(x == 1200)
        {
          x = x - (noCols  * 60);
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
           println("drawEnemy okay");
        }
        
        //ellipse(x , y , sizeX, sizeY);
        //rect (x,y, sizeX, sizeY);
         println("drawEnemy okay"); 
       
   }//end render()
 
 
  void update()
  {
    x += enemySpeed;
    if(x > 1200 || x < 50) enemySpeed *= -1;
    
     for(int i = 0 ; i < sprites.size() ; i ++)
    {
      Sprite sp = sprites.get(i);
      if (sp instanceof Bullet)
      {
        Bullet b = (Bullet) sp;
        if ((b.x >= x && b.x <= x+ sizeX &&
              b.y >= y && b.y <= y + sizeY) )
        {
          sprites.remove(b);
          sprites.remove(this);
        }
      }
    }
    
  }
 
 void drop()
   {
     for(int i = 0 ; i < sprites.size() ; i ++)
    {
      Sprite sp = sprites.get(i);
       
      if(sp instanceof Enemy )
      {
       Enemy e = (Enemy) sp;
       if( ((e.x == width - sp.sizeX) || e.x < 20 ))
       { 
         sp.speed = -sp.speed;
         e.y += 35;
       }
      }
    }
   }  
    
}

  
    
  