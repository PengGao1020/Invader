class Shooter {
  int pos;


  Shooter(int x) {
    pos=x;
  }


  void draw() {
    
    noStroke();
    fill(255);
    rect(pos, height-35, 25, 10);
    rect(pos, height-20, 10, 20);
    rect(pos, height-7, 50, 14);
  }


  void moveLeft() {
    if (pos>25) {
      pos-=5;
    }
  }


  void moveRight() {
    if (pos<width-25) {
      pos+=5;
    }
  }
}
