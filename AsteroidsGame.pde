//your variable declarations here
Spaceship ship = new Spaceship();
public void setup() 
{
	size(900,900);
  //your code here
}
public void draw() 
{
	background(100);
	ship.show();
	ship.move();
  //your code here
}
public void keyPressed(){
	if(key=='a'){
		ship.turn(-10);
	}else if(key=='d'){
		ship.turn(10);
	}
	if(key=='w'){
		ship.accelerate(.1);
	}

}
