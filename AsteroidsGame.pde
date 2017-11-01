//your variable declarations here
Spaceship ship = new Spaceship();
boolean A = false;
boolean D = false;
boolean W = false;
boolean S = false;
boolean fin = false;
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
		boolean A = true;
		//ship.turn(-10);
	}else if(key=='d'){
		boolean D = true;
		//ship.turn(10);
	}
	if(key=='w'){
		boolean W = true;
		//ship.accelerate(.1);
	}
		if(key=='s'){
		boolean S = true;
		//ship.accelerate(-.01);
	}
	if(key==' '){
		boolean fin = true;
		//ship.setX((int)(Math.random()*899)+1);
		//ship.setDirectionX(0);
		//ship.setY((int)(Math.random()*899)+1);
		//ship.setDirectionY(0);
		//ship.setPointDirection((int)(Math.random()*359)+1);
	}

}
