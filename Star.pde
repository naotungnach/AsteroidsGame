class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  void show(){
    stroke(0);
    fill((int)(Math.random()*225));
    ellipse(myX, myY, 5, 5);
  }
}
