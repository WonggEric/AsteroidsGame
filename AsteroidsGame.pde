private Spaceship ss = new Spaceship();
private Star[] s = new Star[75];
private boolean wKey = false;
private boolean sKey = false;
private boolean aKey = false;
private boolean dKey = false;
private boolean hKey = false;

public void setup()
{
  size(500, 500);
}

public void draw()
{
  background(0);
   for(int i = 0;i<s.length;i++){
    s[i] = new Star();
    s[i].show();
  }
  ss.show();
  ss.move();
  if (wKey) {
    ss.accelerate(0.1);
  }else if(sKey) {
    ss.accelerate(-0.1);
  }else if(aKey) {
    ss.turn(5);
  }else if(dKey) {
    ss.turn(-5);
  }else if(hKey){
    ss.hyperspace();
  }
}
public void keyPressed() {
  if (key == 'w') {
    wKey = true;
  }else if(key == 's') {
    sKey = true;
  }else if (key == 'a') {
    aKey = true;
  }else if (key == 'd') {
    dKey = true;
  }else if(key == 'h'){
    hKey = true;
  }
}

public void keyReleased() {
  if (key == 'w') {
    wKey = false;
  }else if(key == 's') {
    sKey = false;
  }else if(key == 'a') {
    aKey = false;
  }else if(key == 'd') {
    dKey = false;
  }else if(key == 'h'){
    hKey = false;
  }
}
