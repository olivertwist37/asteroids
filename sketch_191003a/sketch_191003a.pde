boolean upkey,leftkey,downkey,rightkey;

PImage Shipimg;

Ship myShip;
void setup(){
  size(1000,800);
  Shipimg =loadImage("Ship.png");
  
  imageMode(CENTER);
  myShip = new Ship();
}



void draw(){
  background(0);
  myShip.show();
  
  
  
  
}


void keyPressed(){
  
  if(keyCode == UP) upkey = true;
  if(keyCode == DOWN) downkey = true;
  if(keyCode == LEFT) leftkey = true;
  if(keyCode == RIGHT) rightkey = true;
}

void keyReleased(){
  if(keyCode == UP) upkey = false;
  if(keyCode == DOWN) downkey = false;
  if(keyCode == LEFT) leftkey = false;
  if(keyCode == RIGHT) rightkey = false;
  
  
}
