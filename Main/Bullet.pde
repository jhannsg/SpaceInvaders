class Bullet extends Sprite{
  float timeToLive;
  float x;
  float y;
  float bulletSpeed;
  
  Bullet(float x, float y, float timeToLive)
  {
   this.x = x;
   this.y = y;
   this.timeToLive = timeToLive;
  }
  
  
  void render()
  {
   fill(white);
   rect(x,y,5,10);
  }
  
  void update()
  {
    y -= 1;
    if (y < 5)
    {
      
    }
    
    
    
  }
  
  
}