Spaceship sprite = new Spaceship() ; 
Floater asteroids = new Asteroid(); 
boolean [] controls = {false,false,false,false} ; 
Star [] cheese = new Star[300] ; 
float ozone = 0 ; 
float er = 0 ; 
int counter = 0 ;
ArrayList <Asteroid> skibidi = new ArrayList <Asteroid>(); 
Asteroid [] bankai = new Asteroid[30]; 
ArrayList<Bullet> bullets = new ArrayList<Bullet>(); 
//Bullet [] lists = new Bullet[20]; 
void setup () {
  
  size ( 750,750); 
  for ( int e = 0 ; e < bankai.length ; e ++ ) {
    bankai[e] = new Asteroid();
    skibidi.add (bankai[e]);
  }
  for ( int i = 0 ; i < cheese.length; i ++) {
    cheese[i] = new Star(); 
  }
 // for ( int r = 0 ; r < 20; r++){
  //  Bullet projectile = new Bullet(sprite); 
  //  bullets.add(projectile);
  //} 
} 

void draw () {
  background(400); 

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
  for ( int k = 0 ; k < skibidi.size(); k++){
    skibidi.get(k).show(); 
    skibidi.get(k). move(); 
    if ( Math.abs(skibidi.get(k).CenterY() - sprite.CenterY()) < 20 && Math.abs(skibidi.get(k).CenterX() - sprite.CenterX())<20){
      sprite.death = true; 
    }
  }
  for (int finals = 0 ; finals <  bullets.size(); finals ++) {
    bullets.get(finals).show();
    bullets.get(finals).move();
    bullets.get(finals).accelerate(.1); 
    for ( int k = 0 ; k < skibidi.size(); k++){
      
      if (Math.abs(bullets.get(finals).get_myvalue() - skibidi.get(k).CenterX())<20 && Math.abs(bullets.get(finals).get_myvalues() - skibidi.get(k).CenterY())<20) {
         bullets.remove(finals); 
         skibidi.remove(k);
         counter +=1; 
         break;      } 
    }    

  }
   for (int finalz = 0 ; finalz <  bullets.size(); finalz ++) {
      if ( bullets.get(finalz).done_for == true && bullets.size()>0   ){
        bullets.remove(finalz);
      }}
  if (skibidi.size() == 0 ){
    sprite.win = true;
  }
   if ( sprite.win==true){
      sprite.show();
   sprite.move();
   textSize(30);
   text(":)))))))))))))))))))))))))))))))))))))))))))",60,375);
   text("I to restart ", 30 , 425);
  } else if (sprite.death == true){
    textSize(30);
    text(":((((((((((((((((((((((((((((((((((((((((((((( ", 60,375);
    text("O to restart the whole thing or I to continue from \n the center", 30,425);
  } else {
    sprite.move();
  
    sprite.show();
    ozone += 0.02;
  }}
  
 

public void keyPressed(){
  if ( keyCode== 79 && sprite.death==true){
  sprite.back_to_formula(); 
  skibidi.clear();
  for ( int o = 0 ; o < 30; o++){
     skibidi.add(new Asteroid());   
  }  
    sprite.death=false;  
 }
  if ( keyCode == 32 && sprite.death!=true ){
     Bullet projectile = new Bullet(sprite);
     bullets.add(projectile);
     
  }

  if (keyCode== 73 && sprite.death==true){
    sprite.back_to_formula(); 
    sprite.death=false;  
    sprite.win=false;
} if (keyCode==73 && sprite.win==true){
  sprite.death=false;  
  sprite.win=false;
  sprite.back_to_formula(); 
  for ( int o = 0 ; o < 30; o++){
      
     Asteroid bee= new Asteroid(); 
     skibidi.add(bee);
     }   } 
  if( keyCode == 87 && sprite.death==false) {
    controls[0] = true; 
  } else {
  controls [0] = false;}
  if( keyCode == 65 && sprite.death==false) {
    controls[1] = true; 
  } else {
  controls [1] = false;}
  if( keyCode == 83 && sprite.death==false) {
    controls[2] = true; 
  } else {
  controls [2] = false; }
  if( keyCode == 68 && sprite.death==false) {
    controls[3] = true; 
  } else {
  controls [3] = false;}
}
