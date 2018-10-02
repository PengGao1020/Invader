class Bullet {
  PVector pos;
  boolean outSide=false;

  Bullet(float x, float y) {
    pos=new PVector (x, y);
  }

  void draw() {
    fill(255, 0, 0);
    ellipse(pos.x, pos.y, 10, 10);
  }

  void update() {
    pos.y--;
    if (pos.y<0) {
      outSide=!outSide;
    }
  }
}
