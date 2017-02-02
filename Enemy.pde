class Enemy extends GameObject
{
  float theta;
  float health;
  float speed;
  Enemy(int spawnX, int spawnY)
  {
    pos = new PVector(spawnX, spawnY);
    accel = new PVector(width/2, height/2);
    this.theta = theta;
  }
  
  void huntPlayer()
  {
    
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