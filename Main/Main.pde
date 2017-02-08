/*Space Invaders game 
 Written by Paul Petrisor
 DT228/2 - C15735611
 */
color white = color(255, 255, 255);
color red = color(100, 255, 122);
float speed = 2;
float startX = 100;
float startY = 50;
int score = 0;
int level = 1;
int lives = 3;

Player player = new Player();
Enemy enemy = new Enemy(startX, startY, speed);
Bomb bomb = new Bomb(random(200, 600), random(60, 200));
boolean gameOver = false;
boolean startGame = false;

ArrayList<Sprite> sprites = new ArrayList<Sprite>();

PFont font1;
PFont font2;

void setup() 
{
  size(1280, 700);
  
  //bomb.createBomb();
  enemy.createEnemy();
  sprites.add(player);
  
} 


void draw()
{
  if (gameOver == false)
  {
    textAlign(LEFT);
    background(0);
    noStroke();
    for (int i = 0; i < sprites.size(); i++)
    {
      Sprite sp = sprites.get(i);
      sp.render();
      sp.update();
    }
    
     if(frameCount%300 == 0)
    {
      sprites.add(new Bomb(random(300, 700), random(100, 300)));
    }

    textSize(36);
    fill(red);
    text("Score : " + score, 50, 670 );
    text("LEVEL : " + level, 1000, 670);
    text("LIVES : " + lives, 500, 670);
  }

  if (gameOver || lives == 0)
  {
    noStroke();
    background(0);
    textSize(48);
    textAlign(CENTER);
    text("GAME OVER", width/2, height/2-100);
    text("SCORE : " + score, width/2, height/2 + 100);
  
    sprites.clear();
  }
  
  if(!startGame)
  {
    background(0);
    gameStart();
  }
    
}//end draw()



void gameStart()
{
  float xs = width / 2;
  float ys = height / 2;
   float size = width / 6; 
   textSize(48);
   textAlign(CENTER);
  text("SPACE INVADERS ", 640, 150);
  text("CONTINUE ?  ", 640, 500);
    stroke(0,255,0);
    fill(23,0,100);
    
      if ( (dist(mouseX, mouseY, xs-size, ys)) < size * 0.5) //if mouse over circle1
      { 
        fill(white); 
        if(mousePressed)
        {
          startGame = true;
        }
      }
     
       else
       {
         noFill();  
       }
       ellipse(xs - size, ys , size, size);
       line(xs - size - 60, ys - 40 ,  xs - size - 15 , ys + 60);
       line(xs - size - 15, ys + 60 , xs - size + 50, ys - 60);
    
     
      if  ((dist(mouseX, mouseY, xs+size, ys)) < size * 0.5) //if mouse over circle2
      {
        fill(67);
        if(mousePressed)
        {
          startGame = false;
          exit();
        }
      }
      else
      {
        noFill(); 
      }
        ellipse(xs + size, ys, size, size); 
        stroke(255,0,0);
        line(xs + size - 50, ys - 50,  xs + size + 50, ys + 50);
        line(xs + size + 50, ys - 50, xs + size - 50, ys + 50);
   
       
}