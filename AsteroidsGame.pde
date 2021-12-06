Star [] bob;
Spaceship joe = new Spaceship();
boolean right, left;
ArrayList <Asteroid> jeff = new ArrayList <Asteroid>();
public void setup()
{
  size(750,750);
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
for(int i = 0; i < 10; i++){
    jeff.add(new Asteroid());
    jeff.get(i).show();
    jeff.get(i).move();
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
    if(key == 'a' || key == 'A'){
    joe.accelerate(5);
    }
    if(key == 's' || key == 'S'){
    joe.accelerate(-5);
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
      joe.myCenterX = (int)(Math.random()*751);
      joe.myCenterY = (int)(Math.random()*751);
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
