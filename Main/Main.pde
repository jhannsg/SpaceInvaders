Player player = new Player();
ArrayList<Enemy> enemies = new ArrayList<Enemy>();
Enemy enemy = new Enemy();

color white = color(255,255,255);

void setup() 
{

  size(1280, 700);
  enemy.createEnemy();
}

//Sprite s = new Sprite(200, 400, color(122,122,0)); 


void draw()
{
  
  background(0);
  
  //draw & update enemies
  for(int i = 0; i < enemies.size(); i++)
  {
    Enemy e = enemies.get(i);
    e.drawEnemy();
    e.update();
    if(e.alive && ((e.x == width - e.sizeX) || e.x < 1 ))
      {
          e.drop();
      }
  }
  
  player.draw();
  player.update();
  fill(white);
  strokeWeight(2);
  line(0, height - 50, width, height - 50);
  
 
 
  
  
  
}