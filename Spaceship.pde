class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      xCorners[3] = -2;
      yCorners[3] = 0;
      myColor = color(255,255,255);
      myCenterX = 375;
      myCenterY = 375;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
    }
    public void hyperspace(){
      myCenterX = (int)(Math.random()*700)+25;
      myCenterY = (int)(Math.random()*700)+25;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = (int)(Math.random()*361);
    }
    public float getX(){
      return (float)myCenterX;
    }
    public float getY(){
      return (float)myCenterY;
    }
}
