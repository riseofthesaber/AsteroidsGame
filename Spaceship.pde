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
    		corners=17;
    		int[] xS = {-9,20,15,4,9,10,9,10,9,4,15,20,-9,-2,-5,-5,-2};
    		int[] yS = {-10,-6,-5,-5,-2,-1,0,1,2,5,5,6,10,4,1,-1,-4};
    		xCorners = xS;
    		yCorners = yS;
			myCenterX=900/2;
			myCenterY=900/2;
			myDirectionX=0;
			myDirectionY=0;
			myPointDirection=270;
			myColor=color(15,200,255);

    }
}
