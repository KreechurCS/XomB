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
  }
}