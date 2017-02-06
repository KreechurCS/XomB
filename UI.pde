class UI
{
  UI()
  {
    
  }
  
  void render()
  {
    fill(0);
    textSize(20);
    text("Score: " + score, width - 80, 30);
    
    text("Ammo: " + ammo, width - 80, height - 30);
    text("Health: " + (int)playerHealth, width - 180, height - 30);
  }
  
  void update()
  {
     
  }
}