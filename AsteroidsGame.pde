//your variable declarations here
Spaceship ship = new Spaceship();
Stars[] backG= new Stars[100];
boolean le = false;
boolean ri = false;
boolean fo = false;
boolean ba = false;
boolean fin = false;
public void setup() 
{
	for(int i = 0; i < backG.length; i++)
	{
  		backG[i] = new Stars();
	}

	size(900,900);
  //your code here
}
public void draw() 
{
	background(0);
	for(int i = 0; i < backG.length; i++){
		backG[i].show();
	}
	ship.show();
	ship.move();


	if( le==true){
		ship.turn(-5);
	}
	if(ri==true){
		ship.turn(5);
	}
	if( fo==true){
		ship.accelerate(.05);
	}
	if(ba==true){
		ship.accelerate(-.005);
	}

  //your code here
}
public void keyPressed(){
	if(key=='a'){
		le = true;
		//ship.turn(-10);
	}else if(key=='d'){
		ri = true;
		//ship.turn(10);

	}
	if(key=='w'){
		fo = true;
		//ship.accelerate(.1);
	}
		if(key=='s'){
		ba = true;
		//ship.accelerate(-.01);
	}
	if(key=='q'){
		fin = true;
		ship.setX((int)(Math.random()*899)+1);
		ship.setDirectionX(0);
		ship.setY((int)(Math.random()*899)+1);
		ship.setDirectionY(0);
		ship.setPointDirection((int)(Math.random()*359)+1);
	}

}
void keyReleased()
{
	if(key=='a'){
		le = false;
		//ship.turn(-10);
	}else if(key=='d'){
		ri = false;
		//ship.turn(10);
	}
	if(key=='w'){
		fo = false;
		//ship.accelerate(.1);
	}
		if(key=='s'){
		ba = false;
		//ship.accelerate(-.01);
	}

}

