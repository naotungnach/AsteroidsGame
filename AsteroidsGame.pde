//your variable declarations here
//BACKGROUND!!!!!!!!!!!!!!!
Star [] sky = new Star[270];
Spaceship bro = new Spaceship();
public void setup()
{
  size(500,500);
  background(0);
  for (int i = 0; i < sky.length; i++){
    sky[i] = new Star();
  }
}//end of setup
public void draw() {
  background(0);
  for (int i = 0; i < sky.length; i++){
    sky[i].show();
  }
  bro.show();
  bro.move();
}//end of draw
public void keyPressed(){
  if (key == 'w'){bro.accelerate(1);}
  if (key == 's'){bro.accelerate(-1);}
  if (key == 'z'){
  bro.setXspeed(0);
  bro.setYspeed(0);
    }
  if (key == 'd'){bro.turn(20);}
  if (key == 'a'){bro.turn(-20);}
  if (key == 'h'){
    bro.setXspeed(0);
    bro.setYspeed(0);
    bro.setXcenter((int)(Math.random()*500));
    bro.setYcenter((int)(Math.random()*500));
    bro.setDirection((double)(Math.random()*500));
  }//hyperspace end
 
  }//end of keypressed


