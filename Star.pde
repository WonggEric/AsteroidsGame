class Star {
  private int myX, myY, myC;
  public Star() {
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*1000);
    myC = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }

  public void show() {
    fill(255);
    noStroke();
    ellipse(myX, myY, 5, 5);
    fill(color(254,230,153));
    ellipse(myX,myY,4,4);
  }
}
