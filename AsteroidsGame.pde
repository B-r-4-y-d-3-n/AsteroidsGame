Star [] bob;
Spaceship joe = new Spaceship();
boolean right, left;
public void setup()
{
  size(1000,1000);
  bob = new Star[1000];
  for(int i = 0; i < bob.length; i++)
    bob[i] = new Star();
}
public void draw() 
{
  background(0);
  for(int i = 0; i < bob.length; i++){
    bob[i].show();
}
joe.show();
joe.move();
if(left){
  joe.turn(-5);
}
if(right){
  joe.turn(5);
}
}
  public void keyPressed(){
    if(keyCode == 37){
      left = true;
    }
    if(keyCode == 39){
      right = true;
    }
    if(keyCode == 38){
      joe.accelerate(.1);
    }
    if(keyCode == 40){
      joe.accelerate(-.1);
    }
    if(key == ' '){
      joe.setXspeed(0);
      joe.setYspeed(0);
      joe.myCenterX = (int)(Math.random()*1001);
      joe.myCenterY = (int)(Math.random()*1001);
      joe.myPointDirection = (int)(Math.random()*361);
    }
   }
  public void keyReleased(){
    if(keyCode == 37){
      left = false;
    }
    if(keyCode == 39){
      right = false;
    }
 }
