class Star {
  private int myX, myY, myC1, myC2,rand;
  public Star() {
    myX = (int)(Math.random()*751);
    myY = (int)(Math.random()*751);
    myC1 = color(255, 255, 255);
    myC2 = color(255, 255, 180);
    rand = (int)(Math.random()*2);
  }

  public void show() {
    if(rand==1){
      fill(myC1);
      noStroke();
      ellipse(myX, myY, 2.1+3, 2.1+3);
      fill(myC2);
      noStroke();
      ellipse(myX, myY, 2.1+3, 2.1+3);
    }else{
      fill(myC1);
      noStroke();
      ellipse(myX, myY, 2.1, 2.1);
      fill(myC2);
      noStroke();
      ellipse(myX, myY, 2.1, 2.1);
    }
  }
  public void bigDipper() {
    stroke(255);
    strokeWeight(0.75);
    fill(myC1);
    ellipse(328, 305, 2, 2);
    ellipse(409, 323, 2, 2);
    ellipse(439, 347, 2, 2);
    ellipse(473, 359, 2, 2);
    ellipse(575, 375, 2, 2);
    ellipse(556, 414, 2, 2);
    ellipse(478, 400, 2, 2);

    line(328, 305, 409, 323);
    line(409, 323, 439, 347);
    line(439, 347, 473, 359);
    line(473, 359, 575, 375);
    line(575, 375, 556, 414);
    line(556, 414, 478, 400);
    line(478, 400, 473, 359);
  }
}
