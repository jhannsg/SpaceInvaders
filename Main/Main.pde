Player player = new Player();


void setup() 
{

  size(1280, 700);
  // playscreen();
   s.render();
  
  
  
}

Sprite s = new Sprite(200, 400, color(122,122,0)); 


void draw()
{
  
  background(0);
  player.draw();
  player.update();
  fill(244,164,96);
  strokeWeight(2);
  line(0, height - 50, width, height - 50);
  
 
 
  
  
  
}