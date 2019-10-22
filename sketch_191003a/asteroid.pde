class Asteroid extends GameObject {
  int size;

  Asteroid(int s, float x, float y) {
    size=s;
    location =new PVector(x, y);
    velocity = new PVector(random(-3, 3), random(-3, 3));
    lives=3;
    println(""+lives);
  }
  void show() {

    if (lives>2) {
      fill(0);
      stroke(255);
      strokeWeight(1);
      ellipse(location.x, location.y, size, size);
      println(""+lives);
    } else {
      velocity.setMag (0);
      location.x =-1000;
      //println(""+lives);
    }
  }

  void act() {
    super.act();
 
    
if (mode==gameOver){
  
 lives=0; 
  
}
    
    
    if (size<=50) {
      
           
      lives=0;
    }
    
    
  

    //n++;
    //println("n"+n);
    //if (n>=3000) {
    //  myGameObjects.add(new Asteroid(125, 0, 0) );
    //  n=0;
    //}


    if (dist(location.x, location.y, myShip.location.x, myShip.location.y)<25/2+size/2  && shipTimer<0) {
      myGameObjects.add(new Asteroid(size-25, location.x, location.y) );
      myGameObjects.add(new Asteroid(size-25, location.x, location.y) );

      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );
      myGameObjects.add(new particles(location.x, location.y) );





      lives=0;
      myShip.lives--;
      shipTimer=100;
    }



    int i=0;

    while (i<myGameObjects.size()) {
      GameObject myObj = myGameObjects.get(i);
      if (myObj instanceof Bullet) {
        if (dist(myObj.location.x, myObj.location.y, location.x, location.y)<size/2+5) {

          myGameObjects.add(new Asteroid(size-25, location.x, location.y) );
          myGameObjects.add(new Asteroid(size-25, location.x, location.y) );

          myGameObjects.add(new particles(location.x, location.y) );
          myGameObjects.add(new particles(location.x, location.y) );
          myGameObjects.add(new particles(location.x, location.y) );
          myGameObjects.add(new particles(location.x, location.y) );
          myGameObjects.add(new particles(location.x, location.y) );
          myGameObjects.add(new particles(location.x, location.y) );
          myGameObjects.add(new particles(location.x, location.y) );
          myGameObjects.add(new particles(location.x, location.y) );

          lives=0;
          myObj.lives=0;
          k++;
        }
      }



      i++;
    }
  }
}
