class Spaceship extends Floater  
{   
  public boolean win; 
  public boolean death ;
  protected Spaceship(){
  death = false; 
  corners = 3 ;  //the number of corners, a triangular floater has 3   
  xCorners = new int[corners] ;  
  yCorners = new int[corners] ;  
  xCorners[0] = -8;
  yCorners[0] = -8;
  xCorners[1] = 16;
  yCorners[1] =  0;
  xCorners[2] = -8;
  yCorners[2] = 8;
  myCenterX= 375 ; 
  myCenterY= 375 ; 
  myXspeed = 0 ; 
  myYspeed = 0 ; 
  myPointDirection = 0 ; 
 
}
 public void the_world(){
   if (death== false && win== false){ myCenterX = (int)(Math.random()*750);
 myCenterY = (int)(Math.random()*750);
 myXspeed = 0;
 myYspeed = 0;
 myPointDirection = (int)(Math.random()*360);}
 
 
}
  public double CenterY() {
    return myCenterY;
  } 
   public double CenterX() {
    return myCenterX;
  } 
  public int get_point(){
  return (int)myPointDirection; }
   public int get_speedx(){
  return (int)myXspeed; }
   public int get_speedy(){
  return (int)myYspeed; }
  public void  back_to_formula(){
    myCenterX= 375 ; 
    myCenterY= 375 ; 
    myXspeed = 0 ; 
    myYspeed = 0 ; 
    myPointDirection = 0 ; 
  }
}
