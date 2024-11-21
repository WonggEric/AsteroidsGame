class Star {
  private int myX, myY, myC;
  public Star() {
    myX = (int)(Math.random()*751);
    myY = (int)(Math.random()*751);
    myC = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }

  public void show() {
    fill(myC);
    noStroke();
    ellipse(myX, myY, 5, 5);
  }
}
