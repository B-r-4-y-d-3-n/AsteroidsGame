class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 8;
      xCorners = new int[]{19,-5,-5,0,-11,0,-5,-5};
      yCorners = new int[]{0,9,7,5,0,-5,-7,-9};
      myColor = color(152);
      myCenterX= 500;
      myCenterY = 500;
      myXspeed = 0;
      myYspeed = 0; 
      myPointDirection = 0;
    }
    public void setXspeed(double x){
      myXspeed = x;
    }
    public void setYspeed(double y){
      myYspeed = y;
    }
}
