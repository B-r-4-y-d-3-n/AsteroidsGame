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
    if(key == ' '){
      joe.accelerate(.1);
    }
    if(key == 'd' || key == 'D'){
      joe.turn(10);
    }
    if(key == 'g' || key == 'G'){
      joe.accelerate(-.1);
    }
    if(key == 'f' || key == 'F'){
      joe.setXspeed(0);
    }
    if(key == 'j' || key == 'J'){
      joe.setYspeed(0);
    }
  }
  joe.move();
  joe.show();
 }
