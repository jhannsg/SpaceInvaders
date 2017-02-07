abstract class Sprite
{
  
  float sizeX = 60;
  float sizeY = 30;
  float x;
  float y;
// PVector pos;
 //float speed = 100;
 color eColor; 
 boolean visible = true;
 boolean alive = true;
 float speed = 1;
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