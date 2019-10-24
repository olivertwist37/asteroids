class Ship extends GameObject {

  //instance variables


  int i,x;
  PVector direction;

  //constructor(s)
  Ship() {
    lives = 3;
    location = new PVector (width/2, height/2);
    velocity = new PVector(0, 0);
    direction = new PVector (0, -0.045);
    i=51;
  }

  //behaviour functions
  void show() {
    pushMatrix();
    translate(location.x, location.y);
    rotate(direction.heading());
    image(Shipimg, 0, 0);
    stroke(255);
    strokeWeight(1);
    line(0, 0, 25, 0);
fill(100,100,255,shipTimer*2);
noStroke();
ellipse(0,0,70,70);
fill(255,x);
ellipse(0,0,70,70);

    popMatrix();
  }

  void act() {
    super.act();
    //location.add(velocity);
if (lives<=0){
   mode = gameOver;
}


    if (upkey)velocity.add(direction);
    if (downkey) velocity.sub(direction);
    if (leftkey) direction.rotate(-radians(3) );
    if (rightkey) direction.rotate(radians(3) );

    i++;
    if (spacekey&&i>30) {
      myGameObjects.add(new Bullet());
      i=0;
    }
    if (x<=0){
     x=0; 
    }
    x--;
    println("x"+x);
    if (Xkey&&x<1) {
location = new PVector(random(50, 950), random(50, 750));
      x=255;
    }
    
    
    
  }
}
