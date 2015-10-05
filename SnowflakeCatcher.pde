Snowflake [] snowgie = new Snowflake[500];
void setup()
{
  //your code here
  size(800,600);
  background(0);
  for (int j = 0; j < snowgie.length; j++)   
  {
    snowgie[j] = new Snowflake();
  }
}
void draw()
{
  //your code here
  for (int j = 0; j < snowgie.length; j++)   {
    snowgie[j].erase();
    snowgie[j].lookDown();
    snowgie[j].move();
    snowgie[j].wrap();
    snowgie[j].show();
}
  

}
void mouseDragged()
{
  //your code here
  if (mouseButton == LEFT){
  fill(0,255,255);
  ellipse(mouseX,mouseY, 10, 10);
}
if (mouseButton == RIGHT){
  fill(0,0,0);
  ellipse(mouseX, mouseY, 20, 20);
}
}

class Snowflake
{
  //class member variable declarations
  int myX, myY;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    myY = (int)(Math.random()* 600) ;
    myX = (int)(Math.random()*801);
    isMoving = true;
  }
  void show()
  {
    //your code here
    noStroke();
    fill(255,255,255);
    ellipse(myX, myY , 5, 5);

  }
  void lookDown()
  {
    //your code here
    if (get(myX, myY + 7) != color(0,0,0))
      isMoving = false;
    else 
      isMoving = true;
  }
  void erase()
  {
    //your code here
    fill(0,0,0);
    ellipse (myX, myY, 14, 14);
  }
  void move()
  {
    //your code here
    if(isMoving){
    myY = myY + 3;
  }
  }
  void wrap()
  {
    //your code here
    if(myY > 592)
      myY= 0;
  }
}


