class Asteroid extends Floater{
  private double rotSpeed;
  void move(){
    super.move();
    turn(rotSpeed);
  }
  public Asteroid(){
    corners = 12;
    xCorners = new int[] {8,6,9,6,-1,-8,-10,-9,-11,-8,-2,6};
    yCorners = new int[] {12,6,-1,-4,-1,-3,-1,5,11,12,10,14};
    myColor = color(152);
    myCenterX= (float)(Math.random()*751);
    myCenterY = (float)(Math.random()*751);
    myXspeed = (int)(Math.random()*7)-3;
    myYspeed = (int)(Math.random()*7)-3;
    myPointDirection = (int)(Math.random()*722)-361;
    rotSpeed = (int)(Math.random()*15)-7;
    if(rotSpeed == 0)
      rotSpeed = 3;
    if(myXspeed == 0)
      myXspeed = 2;
    if(myXspeed == 0)
      myXspeed = 2;
    }
    public float getX(){
      return (float)myCenterX;
    }
    public float getY(){
      return (float)myCenterY;
  }
}
