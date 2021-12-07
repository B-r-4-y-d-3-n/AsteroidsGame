Star [] bob;
Spaceship joe = new Spaceship();
boolean right, left;
int x = (int)(Math.random()*20)+15;
ArrayList <Asteroid> jeff = new ArrayList <Asteroid>();
public void setup()
{
  size(750,750);
  bob = new Star[100];
  for(int i = 0; i < bob.length; i++)
    bob[i] = new Star();
    for(int i = 0; i < x; i++){
    jeff.add(new Asteroid());
    }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < bob.length; i++){
    bob[i].show();
}
for(int i = 0; i < jeff.size(); i++){
    jeff.get(i).show();
    jeff.get(i).move();
    float d = dist(joe.getX(), joe.getY(), jeff.get(i).getX(), jeff.get(i).getY());
    if(d < 20)
    jeff.remove(i);
}
joe.show();
joe.move();
if(left){
  joe.turn(-10);
}
if(right){
  joe.turn(10);
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
      joe.accelerate(1);
      }
    if(keyCode == 40){
      joe.accelerate(-1);
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
