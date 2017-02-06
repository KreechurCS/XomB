class Heavy extends Enemy
{
  Heavy(int spawnX, int spawnY)
  {
    pos = new PVector(spawnX, spawnY);
    accel = new PVector(spawnX, spawnY);
    this.speed = 0.5;
    this.health = 4;
  }
  
  void render()
  {
    pushMatrix();
    update();
    translate(pos.x, pos.y);
    rotate(theta);
    fill(50);
    strokeWeight(1);
    stroke(0);
    rect(-25,-25, 50, 50);
    popMatrix();
    
  }
  
  
}