//your variable declarations here
Spaceship ship = new Spaceship();
public void setup() 
{
	size(400,400);
  //your code here
}
public void draw() 
{
	background(100);
	ship.setX(200);
	ship.setY(200);
	ship.show();
	ship.move();
  //your code here
}
public void keyPressed(){
	if(key=='1'){
		ship.turn(10);
	}

}
