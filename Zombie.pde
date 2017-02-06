class Zombie extends Enemy
{
  Zombie(int spawnX, int spawnY)
  {
    pos = new PVector(spawnX, spawnY);
    accel = new PVector(spawnX, spawnY);
    this.speed = 0.8;
    this.health = 2;
  }
  
  void render()
  {
    pushMatrix();
    update();
    translate(pos.x, pos.y);
    rotate(theta);
    fill(0,255,0);
    strokeWeight(1);
    stroke(0);
    rect(-25,-25, 50, 50);
    popMatrix();
    
  }
  
  
}