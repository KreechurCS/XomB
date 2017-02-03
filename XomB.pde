void setup()
{
  size(1280,720);
  frameRate(60);
  PFont game;
  game = loadFont("ARDARLING.vlw");
  textFont(game);
}

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();
boolean[] keys = new boolean[1000];

float timeDelta = 1.0f / 60.0f;
int enemies = 1;
int i = 0;
int score = 0;
int gameState = 0;


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
  
    Enemy enemy = new Enemy((int)random(width),(int)random(height));
    gameObjects.add(enemy);
  
}

void menu()
{
  background(255);
  textSize(100);
  fill(0);
  text("Xom-B", width/2 - 130, 200);
  button("Start", width/2 - 130,300);
  
}

void button(String name, int buttonX, int buttonY)
{
  fill(0,0,0,0);
  stroke(255,0,0);
  strokeWeight(3);
  rect(buttonX, buttonY, 300,50);
  fill(0);
  textSize(50);
  text(name, buttonX + 90, buttonY + 45);
}

void draw()
{
  if (gameState == 0)
  {
    menu();
  }
  else if (gameState == 1)
  {
    background(230);
    fill(0,0,0,0);
    stroke(0);
    strokeWeight(4);
    rect(0,0, width, height);
    fill(0);
    textSize(10);
    text("Score: " + score, width - 100, 30);
  

    player1.render();
    player1.controls();
    player1.update();
  
    if(frameCount % 120 == 0)
    {
      spawnEnemy();
    }
  
    for (int i = 0 ; i < gameObjects.size();  i ++)
    {
      GameObject go = gameObjects.get(i); 
      go.update();
      go.render();    
    }
      println(score);
  }
  else if(gameState == 2)
  {
    exit();
  }
}