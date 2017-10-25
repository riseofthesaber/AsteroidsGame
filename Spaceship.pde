class Spaceship extends Floater  
{   
    //your code here
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

    public Spaceship(){
    		corners=16;
    		int[] xS = {-8,15,14,4,8,9,10,9,8,4,14,15,-8,-2,-6,-6,-2};
    		int[] yS = {-10,-7,-6,-4,-2,-1,0,1,2,4,6,7,10,4,2,2,-4};
    		xCorners = xS;
    		yCorners = yS;
    }
}
