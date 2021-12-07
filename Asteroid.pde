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
