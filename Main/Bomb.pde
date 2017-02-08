class Bomb extends Sprite{
  float theta;
  PVector direction, pos;
  int numBombs = 20;
  Bomb(float x, float y)
  { 
    this.x = x;
    this.y = y; 
    theta = 0;
    direction = new PVector(random(-1,1), random(-1,1));
    pos = new PVector(x, y);
  }
  
  void createBomb()
  {
    
    for (int i = 0; i< numBombs; i++)
    {
       sprites.add(new Bomb(x , y));
      
    }
   
  }
  
  
  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    fill(255, 0, 0);
    rotate(theta);
  
    for(int i = 0 ; i < sprites.size() ; i ++)
     {
      Sprite sp = sprites.get(i);
        if(sp instanceof Bomb)
        {
          if(frameCount% 500 < 499)
          {
            rect(x, y, 30, 30);
          }
        }
     }
    popMatrix();
  }
  
  
  void update()
  {
     theta+= random(0.001f, 0.0001f);
     pos.add(direction);
     
  }
  
}//end Bomb class