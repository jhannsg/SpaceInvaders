/*Space Invaders game 


*/
color white = color(255,255,255);
color red = color(100,255,122);
float speed = 2;
float startX = 100;
float startY = 50;
int score ;
int level ;
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
  reset();
}  
  void reset()
  {
    speed = 2;
    startX = 100;
    startY = 50;
    score = 0;
    level = 1;
    
    
    enemy.createEnemy();
    sprites.add(player);
    //sprites.add(bomb);
    bomb.createBomb();
  }//end reset()


void draw()
{
  if(gameOver == false)
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
     fill(red);
     text("Score : " + score, 50, 670 );
  }
  
   if (gameOver)
   {
      background(0);
      textSize(48);
      textAlign(CENTER);
      text("GAME OVER" , width/2, height/2-100);
      text("SCORE : " + score, width/2, height/2 + 100);
      
      sprites.clear();
      
      textSize(36);
      
    float x = width / 2 + 200;
    float y = height / 2 + 200 ;
    float size = width / 6; 
    color c = color(0, 200, 0);
    text("DO YOU WANT TO CONTINUE ?", 380, 150);
    strokeWeight(4);
    stroke(c);
    noFill();
    
      if ( (dist(mouseX, mouseY, x-size, y)) < size * 0.5) //if mouse over circle1
      { 
        fill(67); 
        if(mousePressed)
        {
          gameOver = false;
        }
      }
     
       else
       {
         noFill();  
       }
       ellipse(x - size, y , size, size);
       line(x - size - 60, y - 40 ,  x - size - 15 , y + 60);
       line(x - size - 15, y + 60 , x - size + 50, y - 60);
   }
  
}//end draw()