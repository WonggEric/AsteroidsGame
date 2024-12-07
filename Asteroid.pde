class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid() {
    rotSpeed = Math.random()*3;
    corners = 6;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(-16.5 + (Math.random() * 8 - 4));
    yCorners[0] = (int)(-12 + (Math.random() * 8 - 4));
    xCorners[1] = (int)(10.5 + (Math.random() * 8 - 4));
    yCorners[1] = (int)(-12 + (Math.random() * 8 - 4));
    xCorners[2] = (int)(19.5 + (Math.random() * 8 - 4));
    yCorners[2] = (int)(0 + (Math.random() * 8 - 4));
    xCorners[3] = (int)(9 + (Math.random() * 8 - 4));
    yCorners[3] = (int)(15 + (Math.random() * 8 - 4));
    xCorners[4] = (int)(-16.5 + (Math.random() * 8 - 4));
    yCorners[4] = (int)(12 + (Math.random() * 8 - 4));
    xCorners[5] = (int)(-12 + (Math.random() * 8 - 4));
    yCorners[5] = (int)(0 + (Math.random() * 8 - 4));
    myColor  = color(118, 118, 118);
    myCenterX = (int)(Math.random()*751);
    myCenterY = (int)(Math.random()*751);
    myXspeed = Math.random()*3-1;
    myYspeed = Math.random()*3-1;
    myPointDirection = Math.random()*360;
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  public float getX() {
    return (float)myCenterX;
  }
  public float getY() {
    return (float)myCenterY;
  }
}
