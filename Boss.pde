class Boss extends Enemy
{
  Boss(int spawnX, int spawnY)
  {
    pos = new PVector(spawnX, spawnY);
    accel = new PVector(spawnX, spawnY);
    this.speed = 0.3;
    this.health = 50;
  }
  
  void render()
  {
    pushMatrix();
    update();
    translate(pos.x, pos.y);
    rotate(theta);
    fill(#0EFF03);
    strokeWeight(1);
    stroke(0);
    rect(-25,-25, 100, 100);
    rect(20,-25,10,-25);
    rect(-20,-25,-10,-25);
    popMatrix();
    
  }
  
  
}