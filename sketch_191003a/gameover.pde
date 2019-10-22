void gameOver(){
 background(0);
  fill(255);
  text("Game over",width/2,height/2);
  text("Score:"+k,20,20);
    text("Best score:"+bestScore,100,20);
  
  if (k>=bestScore){
  bestScore=k;
  }
  
  myShip.lives=3;
  j=3000;
  n=0;
  myShip.location.x=width/2;
   myShip.location.y=height/2;
  myShip.velocity.x=0;
  myShip.velocity.y=0;
  
}
