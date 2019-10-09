void setup()
{
  size(500, 600);
  textAlign(CENTER, CENTER);
  noLoop();
}
int sum = 0;
void draw()
{
  //your code here
  fill(0);
  sum = 0;
  background(155,155,155);
  for (int y = 0; y < 500; y = y + 50)
  {
    for (int x = 0; x < 500; x = x + 50)
    {
      Die bob = new Die(x, y);
      bob.show();
    }
  }
  fill(0);
  text("Total: " + sum,250,550); 
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY, dots;

  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    roll();
    sum = sum + dots;
  }
  void roll()
  {
    //your code here
    dots = (int)(Math.random()*6+1);
  }
  void show()
  {
    //your code here
    noStroke();
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    rect(myX, myY, 50, 50);

    if (dots == 1)
    {
      noStroke();
      fill(0);
      ellipse(myX+25, myY+25, 10, 10);
    } else if (dots == 2)
    {
      noStroke();
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    } else if (dots == 3)
    {
      noStroke();
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    } else if (dots == 4)
    {
      noStroke();
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    } else if (dots == 5)
    {
      noStroke();
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    } else if (dots == 6)
    {
      noStroke();
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+25, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+40, myY+25, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    }
  }
}