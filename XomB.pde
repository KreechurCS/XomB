void setup()
{
  size(1280, 720);
  frameRate(60);
  PFont game;
  game = loadFont("ARDARLING.vlw");
  textFont(game);
  textAlign(CENTER);
  smooth();
  table = loadTable("upgrades.csv", "header");
  for(TableRow row : table.rows())
    {
      ammoLevel = row.getInt("ammo");
      damageLevel = row.getInt("damage");
      healthLevel = row.getInt("firerate");
      totalXP = row.getInt("experience");
    }
}

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();
boolean[] keys = new boolean[1000];

button start = new button(490, 300, 1, "Start");
button upgrade = new button(490, 400, 2, "Upgrade");
button exit = new button(490, 500, 3, "Exit");
UI UI = new UI();
Upgrade upgradeMenu = new Upgrade();

float timeDelta = 1.0f / 60.0f;
int enemies = 1;
int i = 0;
int score = 0;
int gameState = 0;
boolean boss_spawned = false;
int previousScore;
int ammo;
int totalXP;
int buyTimer = 0;


Player player1 = new Player(0);

void keyPressed()
{ 
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}

boolean checkKey(int k)
{
  if (keys.length >= k) 
  {
    return keys[k] || keys[Character.toUpperCase(k)];
  }
  return false;
}

void spawnEnemy()
{

  Zombie enemy = new Zombie((int)random(width), (int)random(height));
  gameObjects.add(enemy);
  if ((int)random(1, 4) == 1 && score > 24)
  {
    Speedy enemyfast = new Speedy((int)random(width), (int)random(height));
    gameObjects.add(enemyfast);
  }
  if ((int)random(1,4) == 1 && score > 49)
  {
     Heavy enemyHeavy = new Heavy((int)random(width), (int)random(height));
     gameObjects.add(enemyHeavy);
  }
  if (score == 100 && boss_spawned == false)
  {
    Boss boss = new Boss(600, 400);
    boss_spawned = true;
    gameObjects.add(boss);
  }
}

void menu()
{
  background(255);
  textSize(100);
  fill(0);
  text("Xom-B", width/2, 200);
  button();
  /*button("Start", width/2 - 150, 300);
  
  if (mouseX > width/2-130 && mouseY > 300 && mouseX < width/2 + 230 && mouseY <350)
  {
    if (mousePressed)
    {
      gameState = 1;
    }
  }
  button("Upgrade", width/2 - 150, 400);
  if (mouseX > width/2-130 && mouseY > 300 && mouseX < width/2 + 230 && mouseY <350)
  {
    if (mousePressed)
    {
      gameState = 1;
    }
  }
  button("Exit", width/2 - 150, 500);
  if (mouseX > width/2-130 && mouseY > 500 && mouseX < width/2 + 230 && mouseY <550)
  {
    if (mousePressed)
    {
      gameState = 3;
    }
  }*/
}

void button()
{
  start.update();
  start.render();
  upgrade.update();
  upgrade.render();
  exit.update();
  exit.render();
}

void reset()
{
  for (int i = gameObjects.size() - 1; i >= 0; i--) 
  {
    GameObject go = gameObjects.get(i);
    gameObjects.remove(i);
    previousScore = score;
    score = 0;
    playerPos.x = 600;
    playerPos.y = 400;
    boss_spawned = false;
  }
}

void draw()
{
  println("player:" + playerHealth);
  if (playerHealth <= 0)
  {
    gameState = 0;
    playerHealth = 100;
    reset();
    totalXP = totalXP + xp;
  }
  if (gameState == 0)
  {
    menu();
    buyTimer = 0;
    canBuy = false;
    ammo = 100 + (25 * ammoLevel);
    playerHealth = 100 +(25 * healthLevel);
  } 
  else if (gameState == 1)
  {
    background(230);
    fill(0, 0, 0, 0);
    stroke(0);
    strokeWeight(4);
    rect(0, 0, width, height);

    player1.render();
    player1.controls();
    player1.update();
    UI.render();
    UI.update();
    

    if (frameCount % 120 == 0)
    {
      spawnEnemy();
    }

    for (int i = 0; i < gameObjects.size(); i ++)
    {
      GameObject go = gameObjects.get(i); 
      go.update();
      go.render();
    }
    println(score);
  } 
  else if(gameState == 2)
  {
    buyTimer++;
    if(buyTimer >= 120)
    {
      canBuy = true;
    }
    upgradeMenu.render();
    upgradeMenu.update();
  }
  
  else if (gameState == 3)
  {
    table.setInt(0, 0, ammoLevel);
    table.setInt(0, 1, damageLevel);
    table.setInt(0, 2, healthLevel);
    table.setInt(0, 3, totalXP);
    saveTable(table, "data/upgrades.csv");
    exit();
  }
  println(xp);
}