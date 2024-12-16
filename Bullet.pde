class Bullet extends Floater{
  public Bullet(Spaceship spaceship){
    myCenterX = spaceship.getX();
    myCenterY = spaceship.getY();
    myXspeed = spaceship.getXspeed();
    myYspeed = spaceship.getYspeed();
    myPointDirection = spaceship.getPointDirection();
    accelerate(6);
  }
  
  public void show(){
    fill(255,0,0);
    noStroke();
    ellipse((float)myCenterX,(float)myCenterY,5,5);
  }
  
   public float getX() {
    return (float)myCenterX;
  }
  public float getY() {
    return (float)myCenterY;
  }
  
   public float getXspeed() {
    return (float)myXspeed;
  }
  public float getYspeed() {
    return (float)myYspeed;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
} 
