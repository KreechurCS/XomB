Table table;
int ammoLevel = 0;
int damageLevel = 0;
int healthLevel = 0;
int xp = 0;
class Upgrade
{
    UpgradeButton upgradeAmmo = new UpgradeButton(440, 300, 1, "Upgrade Ammo");
    UpgradeButton upgradeDamage = new UpgradeButton(440, 400, 2, "Upgrade Damage");
    UpgradeButton upgradeHealth = new UpgradeButton(440, 500, 3, "Upgrade Health");
    button returning = new button(490, 600, 0, "Main Menu");
  Upgrade()
  {
    
  }
  
  void update()
  {
    
  }
  
  void render()
  {
    background(220);
    textSize(40);
    upgradeAmmo.render();
    upgradeDamage.render();
    upgradeHealth.render();
    upgradeAmmo.update();
    upgradeDamage.update();
    upgradeHealth.update();
    returning.render();
    returning.update();
    textSize(100);
    text("Upgrades", width/2, 150);
    textSize(50);
    text("Experience: "+totalXP, width/2,200);
    textSize(30);
    text("Ammo: " + ammoLevel, width/2,230);
    text("Damage: " + damageLevel, width/2,260); 
    text("Health: " + healthLevel, width/2, 290);
    text("Costs = 50 x next level", width/2, 50);
  }
}