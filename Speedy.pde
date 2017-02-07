class Speedy extends Enemy
{
  Speedy(int spawnX, int spawnY)
  {
    pos = new PVector(spawnX, spawnY);
    accel = new PVector(spawnX, spawnY);
    this.speed = 0.9;
    this.health = 1;
  }
  
  void render()
  {
    pushMatrix();
    update();
    translate(pos.x, pos.y);
    rotate(theta);
    fill(#6FFC69);
    strokeWeight(1);
    stroke(0);
    rect(-25,-25, 50, 50);
    rect(10,-25,10,-15);
    rect(-10,-25,-10,-15);
    popMatrix();
    
  }
  
  
}