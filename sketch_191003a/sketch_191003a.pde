boolean upkey, leftkey, downkey, rightkey, spacekey,Xkey;
int mode,n,bestScore,shipTimer;
int j=1500;
final int intro = 0;
final int game = 1;
final int gameOver = 2;
int k;
PImage Shipimg;
int t=0;
Ship myShip;

ArrayList<GameObject> myGameObjects;

Bullet myBullet;

ufo myUfo;

void setup() {
  size(1000, 800);
  Shipimg =loadImage("Ship.png");

  imageMode(CENTER);
  myShip = new Ship();
  Shipimg.resize(50, 50);
  myGameObjects = new ArrayList<GameObject>();


  // myGameObjects.add(new Asteroid(125,0,0) );
 
  //myGameObjects.add(new Asteroid(125, 0, 0) );
  //myGameObjects.add(new Asteroid(125, 0, 0) );
}



void draw() {
  if (mode == intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==gameOver) {
    gameOver();
  } else {
    println("mode error"+mode);
  }
}


void keyPressed() {

  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
  if (key == ' ') spacekey = true;
  if (key == 'x') Xkey = true;
}

void keyReleased() {
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
  if (key == ' ') spacekey = false;
  if (key == 'x') Xkey = false;
}

void mousePressed() {
  if (mode == intro) {
    myGameObjects.add(new Asteroid(125, 0, 0) );
    mode = game;
  } else if (mode==game) {
  } else if (mode==gameOver) {
    mode = intro;
  } else {
    println("mode error"+mode);
  }
}
