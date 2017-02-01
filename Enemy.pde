class Enemy extends GameObject
{
  float theta;
  float health;
  float speed;
  Enemy(float playerX,float playerY)
  {
    pos = new PVector(width/2, height/2);
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
    
  }
  
  void update()
  {
    huntPlayer();
  }
}