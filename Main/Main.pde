Player player = new Player();
//ArrayList<Enemy> enemies = new ArrayList<Enemy>();

float speed = 5;
float startX = 100;
float startY = 50;

Enemy enemy = new Enemy(startX, startY, speed);

ArrayList<Sprite> sprites = new ArrayList<Sprite>();

color white = color(255,255,255);
color red = color(100,255,122);
void setup() 
{

  size(1280, 700);
  enemy.createEnemy();
  
  
  sprites.add(enemy);
  sprites.add(player);
}

void draw()
{
  
  background(0);
  
  //draw & update enemies
  for(int i = sprites.size()-1; i >= 0 ; i--)
  {
    Sprite sp = sprites.get(i);
    sp.render();
    sp.update();
    if(sp.alive && ((sp.x == width - sp.sizeX) || sp.x < 20 ))
      {
          enemy.drop();
      }
  }
 
  fill(white);
 
  
}//end draw()