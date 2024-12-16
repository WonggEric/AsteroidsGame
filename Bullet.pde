class Bullet extends Floater{
  public Bullet(Spaceship spaceship){
    myCenterX = spaceship.getX();
    myCenterY = spaceship.getY();
    myPointDirection = spaceship.getPointDirection();
    accelerate(6);
  }
  
  public void show(){
    fill(255);
    ellipse((float)myCenterX,(float)myCenterY,5,5);
  }
  
  public float getBulletCenterX(){
    return (float)myCenterX;
  }
  public float getBulletCenterY(){
    return (float)myCenterX;
  }
}
