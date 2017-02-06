class Enemy extends GameObject
{
  float theta;
  float health;;
  float speed;
  /*Enemy()
  {
    pos = new PVector(spawnX, spawnY);
    accel = new PVector(spawnX, spawnY);
    this.theta = theta;
  }*/
  
  void huntPlayer()
  {
    /*
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
    }*/
    theta = atan2(playerPos.y - pos.y, playerPos.x - pos.x) + HALF_PI;
    accel = new PVector(sin(theta), - cos(theta));
    accel.normalize();
    pos.add(PVector.mult(accel, speed));
    if (dist(playerPos.x, playerPos.y, this.pos.x, this.pos.y) < 50)
    {
      playerHealth--;
    }
  }
  
  void hit()
  {
    for(int i = 0 ; i < gameObjects.size() ; i ++)
    {
      GameObject go = gameObjects.get(i);
      if (go instanceof Bullet)
      {
        Bullet b = (Bullet) go;
        if (dist(go.pos.x, go.pos.y, this.pos.x, this.pos.y) < 25)
        {
          health --;
          gameObjects.remove(b);
        }
      }
    }
    if (health <= 0)
      {
        score++;
        gameObjects.remove(this);
      }
  }
  
  void render()
  {
    /*
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(theta);
    fill(0,255,0);
    strokeWeight(1);
    stroke(0);
    rect(-25,-25, 50, 50);
    popMatrix();
    */
  }
  
  void update()
  {
    huntPlayer();
    hit();
  }
}