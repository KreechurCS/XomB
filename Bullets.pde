class Bullet extends GameObject
{
  float theta;
  float size;
  float speed = 200;
  float timeToLive;
  float alive;
  
  Bullet(float x, float y, float theta, float size, float timetoLive)
  {
    pos = new PVector(x, y);
    accel = new PVector(0, 1);
    this.theta = theta;
    this.size = size;
    this.timeToLive = timeToLive;
    this.alive = 0;
  }
  
  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(theta);
    stroke(255);
    line(0, -size/2, 0, size/2);
    popMatrix();
  }
  
  void update()
  {
    accel.x = sin(theta);
    accel.y = -cos(theta);
    
    pos.add(PVector.mult(PVector.mult(accel, speed), timeDelta));
  }
  
}