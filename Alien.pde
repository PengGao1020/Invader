class Alien {
  int armyNumber;
  int y=100;
  int x;

  Alien(int n) {
    armyNumber=n;
  }

  void draw() {
    for (int i=0; i<armyNumber; i++) {
      fill(0,255,0);
      x=i*50+25;
      ellipse(x, y, 20, 20);
    }
  //  println(armyNumber + " " + y);
  }

  void invade() { 
    y+=1;
  }
}
