void setup()
{
  size(1280,720);
  frameRate(60);
}

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();
boolean[] keys = new boolean[1000];

float timeDelta = 1.0f / 60.0f;
int enemies = 1;
int i = 0;

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

void draw()
{
  background(230);
  fill(0,0,0,0);
  stroke(0);
  strokeWeight(4);
  rect(0,0, width, height);
  

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
}