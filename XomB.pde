void setup()
{
  size(1280,720);
}

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();
boolean[] keys = new boolean[1000];

float timeDelta = 1.0f / 60.0f;

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
  
  for (int i = gameObjects.size() -1 ; i >= 0  ; i --)
  {
    GameObject go = gameObjects.get(i); 
    go.update();
    go.render();    
  }
}