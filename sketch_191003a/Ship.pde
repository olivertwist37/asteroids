class Ship{
  
  //instance variables
  
 PVector location;
 int lives;
 PVector velocity;
PVector direction;
  
  //constructor(s)
  Ship(){
    lives = 3;
    location = new PVector (width/2,height/2);
    velocity = new PVector(0,0);
    direction = new PVector (0,-1);
    
  }
  
  //behaviour functions
  void show(){
    pushMatrix();
    
    translate(location.x,location.y);
    image(Shipimg,0,0);
    
    
    
    popMatrix();
  }
  
  void act(){
    
    
  }
  
  
  
  
  
  
  
}
