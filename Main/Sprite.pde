abstract class Sprite
{
  float x;
  float y;
  boolean visible = true;
  boolean alive = true;
  float speed = 1;
  PVector pos;
  //Constructor
  Sprite()
  {
  }
  
  abstract void render();
  abstract void update();


  void die()
  {
    visible = false;
  }
}