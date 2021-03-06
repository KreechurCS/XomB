PVector playerPos;
float playerHealth = 100;

class Player
{
   PVector accel;
   PVector velocity;
   int PlayerSpawnX = 600,PlayerSpawnY = 400;
   float theta;
   
   
   Player(float theta)
   {
     accel = new PVector(PlayerSpawnX,PlayerSpawnY);
     playerPos = new PVector(PlayerSpawnX,PlayerSpawnY);
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
   
   
   
   float fireRate = 2;
   float toPass = 1.0/ fireRate;
   float elapsed = toPass;
   
   void update()
   {
     controls();
     
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
      theta -= 0.06;
    }
    if (checkKey('d'))
    {
      theta += 0.06;
    }
    if (checkKey(' ') && elapsed > toPass && ammo > 0)
    {
      PVector bp = PVector.add(playerPos, PVector.mult(accel, 40));
      Bullet b = new Bullet(bp.x, bp.y, theta, 20);
      gameObjects.add(b);
      elapsed = 0;
      ammo--;
    }
    elapsed += timeDelta;
   } 
}