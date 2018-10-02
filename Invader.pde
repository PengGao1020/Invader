
Shooter shooter;
ArrayList<Bullet> bullets;
ArrayList<Alien> aliens;

int alienNumber=10;

void setup() {
  size(500, 800);
  rectMode(CENTER);
  shooter=new Shooter(width/2);
  bullets=new ArrayList<Bullet>();
  for (int i=0; i<bullets.size(); i++) {
    bullets.add(new Bullet(shooter.pos, height-35));
  }
  aliens=new ArrayList<Alien>();
  //println("aliens.size() = " + aliens.size());
  for (int i=0; i<alienNumber; i++) {
    aliens.add(new Alien(i));
  }
}


void draw() {
  background(0);
  shooter.draw();
  if (keyPressed) {
    if (keyCode==LEFT) {
      shooter.moveLeft();
    }
    if (keyCode==RIGHT) {
      shooter.moveRight();
    }
  }
  for (int i=0; i<bullets.size(); i++) {
    Bullet b=bullets.get(i);
    b.draw();
    b.update();
    if (b.outSide==true) {
      bullets.remove(i);
    }
  }
  //println(bullets.size());
  for (int j=0; j<aliens.size(); j++) {
    Alien a=aliens.get(j);
    a.draw();
    a.invade();

    //if (b.pos.x==a.x && b.pos.y==a.y) {
    //  aliens.remove(j);
    //}
  }
}


void keyPressed() {
  if (key==' ')
  { 
    bullets.add(new Bullet(shooter.pos, height-35));
  }
}
