class Boss extends Enemy
{
  Boss(int spawnX, int spawnY)
  {
    pos = new PVector(spawnX, spawnY);
    accel = new PVector(spawnX, spawnY);
    this.speed = 0.3;
    this.health = 50;
  }
  
  void hit()
  {
    for(int i = 0 ; i < gameObjects.size() ; i ++)
    {
      GameObject go = gameObjects.get(i);
      if (go instanceof Bullet)
      {
        Bullet b = (Bullet) go;
        if (dist(go.pos.x, go.pos.y, this.pos.x, this.pos.y) < 50)
        {
          health = (health - 1) - (0.25 * damageLevel);
          gameObjects.remove(b);
        }
      }
    }
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