Table table;
int ammoLevel = 0;
int damageLevel = 0;
int fireRateLevel = 0;
int xp = 0;
class Upgrade
{
    UpgradeButton upgradeAmmo = new UpgradeButton(440, 300, 1, "Upgrade Ammo");
    UpgradeButton upgradeDamage = new UpgradeButton(440, 400, 2, "Upgrade Damage");
    UpgradeButton upgradeFirerate = new UpgradeButton(440, 500, 3, "Upgrade Firerate");
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
    upgradeFirerate.render();
    upgradeAmmo.update();
    upgradeDamage.update();
    upgradeFirerate.update();
    textSize(100);
    text("Upgrades", width/2, 150);
    textSize(50);
    text("Experience: "+totalXP, width/2,200);
  }
}