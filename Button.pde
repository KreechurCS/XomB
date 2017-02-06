class button
{
  int buttonX;
  int buttonY;
  int State;
  String title;
  color buttonCol;
  button(int x, int y, int state, String title)
  {
    this.buttonX = x;
    this.buttonY = y;
    this.State = state;
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
  rect(buttonX, buttonY, 300, 50);
  fill(0);
  textSize(50);
  text(title, width/2, buttonY + 45);
  }
  
  void update()
  {
    if (mouseX > buttonX && mouseY > buttonY && mouseX < buttonX + 300 && mouseY < buttonY + 50)
    {
      if (mousePressed)
      {
        gameState = State;
      }
    }
  }
}