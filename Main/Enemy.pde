class Enemy extends Sprite {
  float Ex;
  float Ey;
  float sizeX = 60;
  float sizeY = 30;
  int noRows = 3;
  int noCols = 10;
  float enemySpeed; 
  
  
  Enemy()
  {}
  
  Enemy (float Ex, float Ey, float enemySpeed)
  {
     this.Ex = Ex;
     this.Ey = Ey;
     this.enemySpeed = enemySpeed;
  }
  
  public void createEnemy()
  { 
  
    for (int i = 0; i < noRows; i++)
    {
      if(i > 0) 
      {
        Ex = Ex - (noCols  * 60); //reposition x after first row drawn
      }
      for (int j = 0; j < noCols; j++) 
      {
        sprites.add(new Enemy(Ex , Ey, enemySpeed));
        Ex += 60;
        if(Ex == 1200)
        {
          Ex = Ex - (noCols * 60);
        }
      }
      Ey += 50;
      
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
          ellipse(Ex , Ey , sizeX, sizeY);
        
      }
       
       
   }//end render()
 
 
  void update()
  {
    Ex += enemySpeed;
    //if(x > 1200 || x < 50) enemySpeed *= -1;
    
     for(int i = 0 ; i < sprites.size() ; i ++)
    {
      Sprite sp = sprites.get(i);
      if (sp instanceof Bullet)
      {
        Bullet b = (Bullet) sp;
        if ((b.x >= x && b.x <= Ex+ sizeX &&
              b.y >= y && b.y <= Ey + sizeY) )
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
       if( ((e.Ex == 1200) || e.Ex == 50 ))
       { 
         enemySpeed *= (-1);
        // Ey += 35;
       }
      }
    }
   }  
    
}

  
    
  