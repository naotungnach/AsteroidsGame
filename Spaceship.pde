class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 5;
    xCorners = new int[]{-8,16,-8,-2, -2};
    yCorners = new int[]{-8,0,8,4, -4};
    myColor = (#00FFD4);
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void setXspeed(double x){myXspeed = x;}
  public void setYspeed(double y){myYspeed = y;}
  public void setXcenter(double x){myCenterX = x;}
  public void setYcenter(double y){myCenterY = y;}
  public double getXcenter(){return myCenterX;}
  public double getYcenter(){return myCenterY;}
  public double getXspeed(){return myXspeed;}
  public double getYspeed(){return myYspeed;}
  public double getDirection(){return myPointDirection;}
  public void setDirection(double y){myPointDirection = y;}
  //public void hyperspace(){
  //}
}//spaceship end
