class Bullet extends Sprite {
  float timeToLive;
  float x;
  float y;
  float bulletSpeed;

  Bullet(float x, float y, float bulletSpeed)
  {
    this.x = x;
    this.y = y;
    this.timeToLive = timeToLive;
    this.bulletSpeed = bulletSpeed;
  }


  void render()
  {
    if (visible)
    {
      fill(white);
      rect(x, y, 5, 20);
    }
  }

  void update()
  {
    y -= bulletSpeed*3;
    if (y < 10)
    {
      visible = false;
    }
  }
}