
color white = color(255,255,255);
color red = color(100,255,122);
float speed = 2;
float startX = 100;
float startY = 50;

Player player = new Player();
Enemy enemy = new Enemy(startX, startY, speed);

ArrayList<Sprite> sprites = new ArrayList<Sprite>();



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
  //for(int i = sprites.size()-1; i >= 0 ; i--)
  for(int i = 0; i < sprites.size(); i++)
  {
    Sprite sp = sprites.get(i);
    sp.render();
    sp.update();
    sp.drop();
    
  
  }
 
  fill(white);
 
  
}//end draw()