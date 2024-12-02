Spaceship sprite = new Spaceship() ; 
boolean [] controls = {false,false,false,false} ; 
Star [] cheese = new Star[300] ; 
float ozone = 0 ; 
float er = 0 ; 
void setup () {

  size ( 750,750); 
  for ( int i = 0 ; i < cheese.length; i ++) {
    cheese[i] = new Star(); 
  }
} 

void draw () {
    background(400); 
  sprite.show(); 
  if(controls[0]) {
    sprite.accelerate(0.1);
  }
  if(controls[1]) {
    sprite.turn(-4);
  }
  if(controls[3]) {
    sprite.turn(4);
  }
  if(controls[2] && ozone> er+.5) {
    sprite.the_world();
    er=ozone;
  }
  for(int i = 0; i < cheese.length; i++) {
    cheese[i].show();
  }
 
  sprite.move();
  sprite.show();
 
  ozone += 0.02;
} 
public void keyPressed(){
  if( keyCode == 87) {
    controls[0] = true; 
  } else {
  controls [0] = false;}
  if( keyCode == 65) {
    controls[1] = true; 
  } else {
  controls [1] = false;}
  if( keyCode == 83) {
    controls[2] = true; 
  } else {
  controls [2] = false;}
  if( keyCode == 68) {
    controls[3] = true; 
  } else {
  controls [3] = false;}
}

