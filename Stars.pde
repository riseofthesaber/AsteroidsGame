class Stars //note that this class does NOT extend Floater
{
  //your code here
  protected double myX,myY;
  public Stars(){
  	myX=(int)(Math.random()*width);
  	myY=(int)(Math.random()*height);
  }
  public void show(){
  	fill(255);
  	stroke(255,255,0);
ellipse((float)myX,(float)myY,5,5);

  }
}
