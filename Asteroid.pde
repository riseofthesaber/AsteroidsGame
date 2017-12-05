class Asteroid extends Floater{
	    public void setX(int x){myCenterX=x;}  
   public int getX(){return (int)myCenterX;}   
   public void setY(int y){myCenterY=y;}   
  public int getY(){return (int)myCenterY;}   
   public void setDirectionX(double x){myDirectionX=x;}   
  public double getDirectionX(){return myDirectionX;}   
  public void setDirectionY(double y){myDirectionY=y;}   
   public double getDirectionY(){return myDirectionY;}   
    public void setPointDirection(int degrees){myPointDirection=degrees;}   
   public double getPointDirection(){return myPointDirection;}
  //
  protected int spin;
	public Asteroid(){
        corners=6;
        int[] xS = {-9,9,8,9,-9,-8};
        int[] yS = {-9,-9,0,9,9,0};
        xCorners = xS;
        yCorners = yS;
        myCenterX=((int)(Math.random()*899)+1);
        myCenterY=((int)(Math.random()*899)+1);
        myColor=color(255-15,255-200,255-255);
        myDirectionX=(int)(Math.random()*3)+1;
        myDirectionY=(int)(Math.random()*3)+1;
        spin= (int)(Math.random()*3)+1;
    if (Math.random()<0.5){
  		spin=spin*-1;
  	}
  	if (Math.random()<0.5){
  			myDirectionX=myDirectionX*-1;
  	}
  	if (Math.random()<0.5){
  		myDirectionY=myDirectionY*-1;
  	}
  	

  } 
  public void move(){
  	
  	//
  	//if (Math.random()<0.5){
  //		spin=spin*-1;
  	//}
  	//  if (Math.random()<5){
  	// 		myDirectionX=myDirectionX*-1;
  	// }
  	// if (Math.random()<5){
  	// 	myDirectionY=myDirectionY*-1;
  	// }
  	//
      turn(spin);
      super.move();
  }

	
}