private Spaceship spaceship= new Spaceship();
private Star[] star = new Star[350];
private Star constellation = new Star();
private ArrayList <Asteroid> asteroid = new ArrayList <Asteroid>();


private boolean wKey = false;
private boolean sKey = false;
private boolean aKey = false;
private boolean dKey = false;
private boolean hKey = false;

public void setup()
{
  size(750, 750);
  for (int i = 0; i<star.length; i++) {
    star[i] = new Star();
    star[0].bigDipper();
  }

  for (int i = 0; i<15; i++) {
    asteroid.add(new Asteroid());
  }
}

public void draw()
{
  background(0);
  constellation.bigDipper();
  spaceship.show();
  spaceship.move();
  for (int i = 0; i<star.length; i++) {
    star[i].show();
  }
  for (int i = 0; i<asteroid.size(); i++) {
    asteroid.get(i).show();
    asteroid.get(i).move();
    float d = dist(spaceship.getX(), spaceship.getY(), asteroid.get(i).getX(), asteroid.get(i).getY());
    if (d<25) {
      asteroid.remove(i);
      i--;
    }
  }
  while (asteroid.size() < 15) {
    asteroid.add(new Asteroid());
  }

  if (wKey) {
    spaceship.accelerate(0.1);
  } else if (sKey) {
    spaceship.accelerate(-0.1);
  } else if (aKey) {
    spaceship.turn(5);
  } else if (dKey) {
    spaceship.turn(-5);
  } else if (hKey) {
    spaceship.hyperspace();
  }
}

public void keyPressed() {
  if (key == 'w') {
    wKey = true;
  } else if (key == 's') {
    sKey = true;
  } else if (key == 'a') {
    aKey = true;
  } else if (key == 'd') {
    dKey = true;
  } else if (key == 'h') {
    hKey = true;
  }
}

public void keyReleased() {
  if (key == 'w') {
    wKey = false;
  } else if (key == 's') {
    sKey = false;
  } else if (key == 'a') {
    aKey = false;
  } else if (key == 'd') {
    dKey = false;
  } else if (key == 'h') {
    hKey = false;
  }
}
