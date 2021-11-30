Star [] bob;
Spaceship joe = new Spaceship();
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
  if(keyPressed){
    if(key == 'a' || key == 'A'){
      joe.turn(-10);
    }
    if(key == 'w' || key == 'W'){
      joe.accelerate(.1);
    }
    if(key == 'd' || key == 'D'){
      joe.turn(10);
    }
    if(key == 's' || key == 'S'){
      joe.accelerate(-.1);
    }
    if(key == ' '){
      joe.setXspeed(0);
      joe.setYspeed(0);
      joe.myCenterX = (int)(Math.random()*1000);
      joe.myCenterY = (int)(Math.random()*1000);
      joe.myPointDirection = (int)(Math.random()*360);
    }
  }
  joe.move();
  joe.show();
 }
