class Bullet extends Floater
{

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

	public Bullet(Spaceship Alpha) {
		myCenterX=Alpha.getX();
		myCenterY=Alpha.getY();
		myPointDirection=Alpha.getPointDirection();
		double dRadians =myPointDirection*(Math.PI/180);
		myDirectionX=5 * Math.cos(dRadians)+ Alpha.getDirectionX();
		myDirectionY=5 * Math.sin(dRadians)+ Alpha.getDirectionY();
		myColor=color(240,55,0);
	}

	public void show(){
		ellipse((float)myCenterX,(float)myCenterY, 10, 10);
		super.show();


	}
}