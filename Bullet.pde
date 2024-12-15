class Bullet extends Floater {
 private  float im_tired;
  private float im_so_done;
  private float please; 
  private float please_s; 
  private boolean done_for;
  Bullet(Spaceship theship){
      myColor=200; 
      done_for= false;
      im_so_done= 22.1; 
      im_tired= 22.1; 
      myCenterX = theship.CenterX() ;
      myCenterY = theship.CenterY() ;
       please = (float)myCenterX;
       please_s = (float)myCenterY;
      myPointDirection = theship.get_point();
      myXspeed = theship.get_speedx(); 
      myYspeed=theship.get_speedy(); 
     
     
      
  }
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myXspeed += ((6*dAmount) * Math.cos(dRadians));    
    myYspeed += ((6*dAmount) * Math.sin(dRadians));       
  }   
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    ellipse(0, 0,im_tired,im_so_done);
    

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      done_for=true; 
      myCenterX = 0;   
      
    }    
    else if (myCenterX<0)
    {     
      done_for=true;
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      done_for=true;
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      done_for=true;
      myCenterY = height;    
    }   
  }  
  public double get_myvalue(){
    return myCenterX;
  }  
  public double get_myvalues(){
  return myCenterY;}
} 
