void game(){
  shipTimer--;
  background(20);
  myShip.show();
  myShip.act();
  fill (255);
text("score:"+k,20,20);
text("lives:"+myShip.lives,100,20);
  int i=0;
  while (i<myGameObjects.size()) {
    GameObject myObj =  myGameObjects.get(i);
    myObj.show();
    myObj.act();
if(myObj.lives==0) {
  
  myGameObjects.remove(i);
}else{
  
  i++;
}



  }
  
  n++;
    println("n"+n);
    if (n>=3500) {
      myGameObjects.add(new Asteroid(125, 0, 0) );
      n=0;
    }
  
 j--;
println("j"+j);
if(j<0){
myGameObjects.add(new ufo() );
j=30000;

 


}
  
  
}
