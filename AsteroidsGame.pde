//your variable declarations here
//BACKGROUND!!!!!!!!!!!!!!!
Star [] sky = new Star[270];
Spaceship bro = new Spaceship();
Asteroid rock = new Asteroid();
Asteroid rockk = new Asteroid();
ArrayList <Asteroid> rocklist = new ArrayList <Asteroid>();
//rocklist.add(new Asteroid());
public void setup() 
{
  size(500,500);
  background(0);
  for (int i = 0; i < sky.length; i++){
    sky[i] = new Star();
  }
  for (int i = 0; i < 24; i++){
    rocklist.add(new Asteroid());
  }
}//end of setup
public void draw() {
  background(0);
  for (int i = 0; i < sky.length; i++){
    sky[i].show();
  }
  bro.show();
  bro.move();
  //rock.show();
  //rock.move();
  //rockk.show();
  //rockk.move();
  for (int i = rocklist.size()-1; i >= 0; i--){
    float distangce;
    distangce = dist((float)bro.getXcenter(), (float)bro.getYcenter(), (float)rocklist.get(i).getXcenter(), (float)rocklist.get(i).getYcenter());
    if (distangce < 20){
      rocklist.remove(i);
    }
    else{
      rocklist.get(i).show();
      rocklist.get(i).move();
    }
  }
}//end of draw
public void keyPressed(){
  if (key == 'w'){bro.accelerate(1);}
  if (key == 's'){bro.accelerate(-1);}
  if (key == 'z'){
  bro.setXspeed(0);
  bro.setYspeed(0);
    }
  if (key == 'a'){bro.turn(20);}
  if (key == 'd'){bro.turn(-20);}
  if (key == 'h'){
    bro.setXspeed(0);
    bro.setYspeed(0);
    bro.setXcenter((int)(Math.random()*500));
    bro.setYcenter((int)(Math.random()*500));
    bro.setDirection((double)(Math.random()*500));
  }//hyperspace end
  
  }//end of keypressed
