class UpgradeButton
{
  int buttonX;
  int buttonY;
  int upgradeType;
  String title;
  color buttonCol;
  int baseCost = 50;
  int level;
  
  UpgradeButton(int x, int y, int type, String title)
  {
    this.buttonX = x;
    this.buttonY = y;
    this.upgradeType = type;
    this.title = title;
  }
  
  void render()
  {
    if (mouseX > buttonX && mouseY > buttonY && mouseX < buttonX + 300 && mouseY < buttonY + 50)
  {
     buttonCol = color(255,0,0,150);
  }
  else
  {
    buttonCol = color(255, 255, 255, 255);
  }
  fill(buttonCol);
  stroke(255, 0, 0);
  strokeWeight(3);
  rect(buttonX, buttonY, 400, 50);
  fill(0);
  textSize(50);
  text(title, width/2, buttonY + 45);
  }
  
  void update()
  {
    if(upgradeType == 1 && totalXP >= (baseCost + (50 * ammoLevel)))
    {
      if (mousePressed)
      {
        ammoLevel++;
        totalXP -= (baseCost + (50 * ammoLevel));
      }
    }
    else if(upgradeType == 2 && totalXP >= (baseCost + (50 * damageLevel)))
    {
      if (mousePressed)
      {
        ammoLevel++;
        totalXP -= (baseCost + (50 * damageLevel));
    }
    else if(upgradeType == 3 && totalXP >= (baseCost + (50 * fireRateLevel)))
    {
      if (mousePressed)
      {
        ammoLevel++;
        totalXP -= (baseCost + (50 * fireRateLevel));
    }
    
    if (mouseX > buttonX && mouseY > buttonY && mouseX < buttonX + 300 && mouseY < buttonY + 50)
    {
      
    }
  }
}