class Star //note that this class does NOT extend Floater
{
 int myX, myY, myColor;
 Star(){
   myX = (int)(Math.random()*1000);
   myY = (int)(Math.random()*1000);
   myColor = (int)(Math.random()*5);
   if(myColor == 0){
     myColor = color(0,0,255);
   }
   else if(myColor == 1){
     myColor = color(213,176,243);
   }
   else if(myColor == 2){
     myColor = color(255,255,0);
   }
   else if(myColor == 3){
     myColor = color(255,165,0);
   }
   else if(myColor == 4){
     myColor = color(255,0,0);
   }
 }
 void show(){
   fill(myColor);
   ellipse(myX,myY,5,5);
 }
}
