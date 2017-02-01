class Player
{
   PVector playerPos;
   PVector accel;
   PVector velocity;
   int PlayerSpawnX = width/2,PlayerSpawnY = height/2;
   float theta;
   float mass = 1;
   
   Player(float theta)
   {
     playerPos = new PVector(PlayerSpawnX,PlayerSpawnY);
     accel = new PVector(PlayerSpawnX,PlayerSpawnY);
     this.theta = theta;
     velocity = new PVector(0,0);
   }
   
   void render()
   {
     fill(255,0,0);
     strokeWeight(1);
     pushMatrix();
     translate(playerPos.x,playerPos.y);
     rotate(theta);
     rect(-25, -25, 50, 50);
     fill(0);
     rect(0,-25,5,-15);
     popMatrix();
   }
   
   PVector force;
   float power = 100;
   
   float fireRate = 2;
   float toPass = 1.0/ fireRate;
   float elapsed = toPass;
   
   void update()
   {
     controls();
     
    for(int i = 0 ; i < gameObjects.size() ; i ++)
    {
      GameObject go = gameObjects.get(i);
      if (go instanceof Bullet)
      {
        Bullet b = (Bullet) go;
        if (dist(go.pos.x, go.pos.y, this.playerPos.x, this.playerPos.y) < 30)
        {
          gameObjects.remove(b);
        }
      }
    }
   }
   
   void controls()
   {
     accel.x = sin(theta);
     accel.y = -cos(theta);
    if (checkKey('w'))
    {
      playerPos.add(accel);
    }
    if (checkKey('s'))
    {
      playerPos.sub(accel);
    }
    if (checkKey('a'))
    {
      theta -= 0.04;
    }
    if (checkKey('d'))
    {
      theta += 0.04;
    }
    if (checkKey(' '))
    {
      PVector bp = PVector.add(playerPos, PVector.mult(accel, 40));
      Bullet b = new Bullet(bp.x, bp.y, theta, 20, 5);
      gameObjects.add(b);
    }
   } 
}