class Bomb extends Sprite {
  float theta;
  int numBombs = 10;
  Bomb(float x, float y)
  { 
    this.x = x;
    this.y = y; 
    theta = 0.01f;

    pos = new PVector(0, 1);
  }

  void createBomb()
  {

    for (int i = 0; i< numBombs; i++)
    {
      sprites.add(new Bomb(x, y));
    }
  }


  void render()
  {   
    fill(255, 0, 0);
    pushMatrix();
    rotate(theta);
    rect(x, y, 30, 30);    
    popMatrix();
  }


  void update()
  {
    y++;
    if(y > 670)
    {
      lives--;
      sprites.remove(this);
    }
  }
}//end Bomb class