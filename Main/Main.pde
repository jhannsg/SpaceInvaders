
color white = color(255,255,255);
color red = color(100,255,122);
float speed = 1;
float startX = 100;
float startY = 50;
int score = 0;
Player player = new Player();
Enemy enemy = new Enemy(startX, startY, speed);
Bomb bomb = new Bomb(random(200, 900), random(60, 200));
boolean gameOver = false;

ArrayList<Sprite> sprites = new ArrayList<Sprite>();

PFont font1;
PFont font2;

void setup() 
{
  size(1280, 700);
  //font1 = loadFont("MagmawaveCaps.vlw");
  //font2 = loadFont("PingFang.vlw");
  
  
  enemy.createEnemy();
  sprites.add(player);
  //sprites.add(bomb);
  bomb.createBomb();
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
  }
   
   textSize(36);
   text("Score : " + score, 50, 670 );
 
   if (gameOver)
   {
      background(0);
      textSize(48);
      text("GAME OVER" , width/2, height/2);
      
   }
  
}//end draw()