class ufo extends GameObject {
  int t;
  int y=0;
  ufo() {
    t=0;
    location =new PVector(0, 0);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    lives=1;
  }
  void show() {
    fill(lives*125);
    strokeWeight(3);
    stroke(50, 50, 255);

    ellipse(location.x, location.y, 50, 50);
    strokeWeight(0);
  }
  void act() {
    super.act();
    location.add(velocity);

    t++;
    println("t"+t);
    if (t>300) {
      myGameObjects.add(new ufoBullet(location.x, location.y) );
      t=0;
    }
y--;
    if (dist(location.x, location.y, myShip.location.x, myShip.location.y)<50/2+48/2 && y<=0 &&shipTimer<0) {

      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      lives=lives-2;
      myShip.lives=myShip.lives-2;
      y=100;
      shipTimer=100;
    }



    int i=0;
    while (i<myGameObjects.size()) {
      GameObject myObj = myGameObjects.get(i);
      if (myObj instanceof Bullet) {
        if (dist(myObj.location.x, myObj.location.y, location.x, location.y)<50/2+5) {



          lives--;
          myObj.lives=0;
          k++;
        }
      }



      i++;
    }
  }
}
