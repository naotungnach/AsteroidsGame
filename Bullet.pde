class Bullet extends Floater{
  Bullet(Spaceship bro){
    myCenterX = bro.getXcenter();
    myCenterY = bro.getYcenter();
    myXspeed = bro.getXspeed();
    myYspeed = bro.getYspeed();
    myPointDirection = bro.getDirection();
    accelerate(0.6);
  }//constructor
  public void show(){
    fill(#FF0000);
    ellipse((float)myCenterX,(float)myCenterY, 5,5);
  }//show
  public double getXcenter(){return myCenterX;}
  public double getYcenter(){return myCenterY;}
}//class
