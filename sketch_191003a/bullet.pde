class Bullet extends GameObject {

  int age;
  
  Bullet() {
    location = new PVector (myShip.location.x, myShip.location.y);
    //location.x=myShip.location.x;
    //location.y=myShip.location.y;
    //velocity.x= myShip.direction.x;
    //velocity.y= myShip.direction.y;
    velocity = new PVector (myShip.direction.x, myShip.direction.y);
    velocity.setMag(5);
    age=0;
    lives=1;
    size=10;
  }
  void show() {
    if (age<200&&lives>0) {
      fill(255);
      ellipse(location.x, location.y, size, size);
    } else {
      velocity.setMag (0);
      location.x =-1000;
      
      
    }
  }
  void act() {
    super.act();
    age++;
if(age>=150){
  lives=0;
  
}
    //    if(location.x>1040){

    //}
    //  if(location.x<-40){

    //}
    //  if(location.y>840){

    //}
    //  if(location.y<-40){

    //}
  }
}
