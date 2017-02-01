abstract class GameObject
{
  PVector pos;
  PVector accel;
  
  GameObject()
  {
    
  }
  
  abstract void update();
  abstract void render();
}