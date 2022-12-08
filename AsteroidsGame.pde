//your variable declarations here
//BACKGROUND!!!!!!!!!!!!!!!
Star [] sky = new Star[270];
Spaceship bro = new Spaceship();
ArrayList <Asteroid> rocklist = new ArrayList <Asteroid>();
ArrayList <Bullet> bulletlist = new ArrayList <Bullet>();
int score = 0;
int rocks = 0;
public void setup() 
{
  size(500,500);
  background(0);
  for (int i = 0; i < sky.length; i++){
    sky[i] = new Star();
  }
  for (int i = 0; i < 25; i++){
    rocklist.add(new Asteroid());
    rocks++;
  }
}//end of setup
public void draw() {
  background(0);
  for (int i = 0; i < sky.length; i++){
    sky[i].show();
  }
  //noStroke();
  //  rect(30,500,60,520);
  //  stroke(0);
    //fill(#FF0000);
    //text("score: "+score, 30, 510);
  bro.show();
  bro.move();
  //for (int i = bulletlist.size()-1; i >= 0; i--){
  //  float distancge;
  //  distancge = dist((float)bulletlist.get(i).getXcenter(), (float)bulletlist.get(i).getYcenter(), (float)rocklist.get(i).getXcenter(), (float)rocklist.get(i).getYcenter());
  //  if (distancge < 40){
  //    bulletlist.remove(i);
  //    rocklist.remove(i);
  //    score++;
  //    break;
  //  }
  //  else{
  //    bulletlist.get(i).move();
  //    bulletlist.get(i).show();
  //  }
  //}
    for (int i = bulletlist.size()-1; i >= 0; i--){
    //float distancge;
        for (int j = rocklist.size()-1; j >= 0; j--){
          float distancge;
          distancge = dist((float)bulletlist.get(i).getXcenter(), (float)bulletlist.get(i).getYcenter(), (float)rocklist.get(j).getXcenter(), (float)rocklist.get(j).getYcenter());
          if (distancge < 30){
            bulletlist.remove(i);
            rocklist.remove(j);
            score = score + 10;
            break;
            }
          else{
            bulletlist.get(i).move();
            bulletlist.get(i).show();
        }
        }
  } //MAIN END  
  for (int i = rocklist.size()-1; i >= 0; i--){
    float distangce;
    distangce = dist((float)bro.getXcenter(), (float)bro.getYcenter(), (float)rocklist.get(i).getXcenter(), (float)rocklist.get(i).getYcenter());
    if (distangce < 20){
      rocklist.remove(i);
      score = score + 10;
    }
    else{
      rocklist.get(i).show();
      rocklist.get(i).move();
    }
  }
  fill(#FF0000);
  textSize(20);
  text("score: "+score, 30, 490);
  if (score >= 250){
    fill(#FF0000);
  textSize(50);
  text("wow", 250, 250);
  textSize(20);
  text("you got them all", 300,300);
  text("reload to restart", 300,320);
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
  if (key == 'f'){bulletlist.add(new Bullet(bro));}
  if (key == 'h'){
    bro.setXspeed(0);
    bro.setYspeed(0);
    bro.setXcenter((int)(Math.random()*500));
    bro.setYcenter((int)(Math.random()*500));
    bro.setDirection((double)(Math.random()*500));
  }//hyperspace end
  
  }//end of keypressed
