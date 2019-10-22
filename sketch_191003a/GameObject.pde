abstract class GameObject {

  int size;
  PVector location;
  int lives;
  PVector velocity;

  GameObject() {
  }

  void show() {
  }
  void act() {
    location.add(velocity);


    if (location.x>1040) {
      location.x=-40;
    }
    if (location.x<-40) {
      location.x=1040;
    }
    if (location.y>840) {
      location.y=-40;
    }
    if (location.y<-40) {
      location.y=840;
    }
  }
  boolean alive() {

    return true;
  }
}
