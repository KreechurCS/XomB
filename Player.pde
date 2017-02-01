class Player
{
   PVector playerPos;
   PVector accel;
   int PlayerSpawnX = width/2,PlayerSpawnY = height/2;
   float theta;
   Player(float theta)
   {
     playerPos = new PVector(PlayerSpawnX,PlayerSpawnY);
     accel = new PVector(PlayerSpawnX,PlayerSpawnY);
     this.theta = theta;
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
      theta -= 0.04;
    }
    if (checkKey('d'))
    {
      theta += 0.04;
    }
   } 
}