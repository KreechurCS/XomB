class Enemy extends GameObject
{
  float theta;
  float health;
  float speed;
  Enemy(int spawnX, int spawnY)
  {
    pos = new PVector(spawnX, spawnY);
    accel = new PVector(spawnX, spawnY);
    this.theta = theta;
  }
  
  void huntPlayer()
  {
    accel.x = sin(theta);
     accel.y = -cos(theta);
    if (playerPos.y < pos.y)
    {
      pos.add(accel);
    }
    if (playerPos.y > pos.y)
    {
      pos.sub(accel);
    }
    if (playerPos.x > pos.x)
    {
      if(frameCount % 60 == 0)
      theta += 0.4;
    }
    if (playerPos.x < pos.x)
    {
      if(frameCount % 60 == 0)
      theta -= 0.4;
    }
    
  }
  
  void render()
  {
    fill(0,255,0);
    strokeWeight(1);
    rect(pos.x,pos.y, 50, 50);
    
  }
  
  void update()
  {
    huntPlayer();
  }
}