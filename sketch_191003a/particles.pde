class particles extends GameObject{
  float c;
  particles(float x,float y){
     location =new PVector(x,y);
    velocity = new PVector(random(-3, 3), random(-3, 3));
    c=255;
    lives=1;
    
  }
  void show(){
    
    c=c-3;
    fill(255,c);
    stroke(255,c);
    ellipse(location.x,location.y,2,2);
    
    
  }
  void act(){
    super.act();
    if(location.x>=1000||location.x<=0||location.y>=1000||location.y<=0){
      lives=0;
      
    }
    
    
    
  }
 
}
