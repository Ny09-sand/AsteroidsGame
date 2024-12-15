class Asteroid extends Floater{
  protected double hold_thy_speed ; 
   Asteroid(){
      corners = 4; 
      xCorners = new int[]{((int)(Math.random()*7+10)),((int)(Math.random()*9+10)),((int)(Math.random()*-9-9)),((int)(Math.random()*-9-9))};
      yCorners = new int[]{((int)(Math.random()*7+10)),((int)(Math.random()*-9-10)),((int)(Math.random()*-9-9)),((int)(Math.random()*9+9))};
  
      hold_thy_speed = Math.random()*8-4; 
      myCenterX = (int)(Math.random()*750) +1 ; 
      myCenterY= (int)(Math.random()*750) +1 ; 
       myXspeed =(int) ( Math.random()*6)-3 ; 
      myYspeed =(int) ( Math.random()*6)-3 ;  
      myPointDirection = Math.random()*360+1; 
  } 
    void move () { 
    myPointDirection+= hold_thy_speed;
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     
  
    if(myCenterX >width)
    {     
      myXspeed =(int) ( Math.random()*6)-3 ; 
      myYspeed =(int) ( Math.random()*6)-3 ; 
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
       myXspeed =(int) ( Math.random()*6)-3 ; 
      myYspeed =(int) ( Math.random()*6)-3 ; 
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myXspeed =(int) ( Math.random()*6)-3 ; 
      myYspeed =(int) ( Math.random()*6)-3 ; 
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myXspeed =(int) ( Math.random()*6)-3 ; 
      myYspeed =(int) ( Math.random()*6)-3 ; 
      myCenterY = height;    
    }   
  } 
  public double CenterY() {
    return myCenterY;
  } 
  public double CenterX() {
    return myCenterX;
  } 
  
}
