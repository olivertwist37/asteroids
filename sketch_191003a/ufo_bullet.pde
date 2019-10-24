class ufoBullet extends GameObject{
  
  ufoBullet(float x,float y){
    location = new PVector (x,y);
 velocity = new PVector (myShip.location.x-location.x,myShip.location.y-location.y);
velocity.setMag(3);
lives=1;
  }
  void show(){
    fill(200,100,100);
    ellipse(location.x,location.y,10,10);
    

  }
  void act(){
    super.act();
    if(location.x>=1000||location.x<=0||location.y>=1000||location.y<=0){
      lives=0;
      
    }
    
    if (dist(location.x,location.y,myShip.location.x,myShip.location.y)<10/2+50/2 &&shipTimer<=0){
      lives=0;
      myShip.lives--;
      shipTimer=100;
    }
    
    
    
    
  }
 
}
