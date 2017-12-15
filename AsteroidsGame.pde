//your variable declarations here
Spaceship ship;
ArrayList<Bullet> blast = new ArrayList<Bullet>();
ArrayList<Asteroid> rock = new ArrayList<Asteroid>();
Stars[] backG= new Stars[100];
boolean le = false;
boolean ri = false;
boolean fo = false;
boolean ba = false;
boolean fin = false;
boolean gun = false;
int numRock=(int)(Math.random()*21)+10;
int hits=0;
int score=0;
int charge=10;
int range= 200;
public void setup() 
{
	size(900,675);
		ship = new Spaceship();
	for(int i = 0; i < numRock ; i++){
		rock.add(new Asteroid());
	}
	for(int i = 0; i < backG.length; i++)
	{
  		backG[i] = new Stars();
	}
	
  //your code here
}
public void draw() 
{
	background(0);

	for(int i = 0; i < backG.length; i++){
		backG[i].show();
	}
	ship.show();
	ship.move()
	;
	for(int i = 0; i < blast.size(); i++){
		blast.get(i).show();
		blast.get(i).move();
			for(int blam=0; blam<rock.size(); blam++){
				if(dist(rock.get(blam).getX(),rock.get(blam).getY(),blast.get(i).getX(),blast.get(i).getY())<15){
					rock.remove(blam);
					blast.remove(i);
					break;
				}
			}
			// if (blast.get(i).getlife() >= range){
			// 	blast.remove(i);
			// 	break;
			// }else{
			// 	blast.get(i).setLife();
			// }
	}
	for(int i = 0; i < rock.size(); i++){
		rock.get(i).show();
		rock.get(i).move();
		if(dist(rock.get(i).getX(),rock.get(i).getY(),ship.getX(),ship.getY())<20){
			rock.remove(i);
			hits++;
		}
	}
	if(rock.size()<2){
		int moar= (int)(Math.random()*40)+1;
			for(int i = 0; i < moar ; i++){
				rock.add(new Asteroid());
			}
	}


	if( le==true){
		ship.turn(-5);
	}
	if(ri==true){
		ship.turn(5);
	}
	if( fo==true){
		ship.accelerate(.25);
	}
	if(ba==true){
		ship.accelerate(-.005);
	}
	if(gun==true){
		blast.add(new Bullet(ship));
		gun=false;
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
		//ship.accelerate(-.01);d
	}
	if(key==32){
		gun = true;
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
	if(key==32){
		gun = false;
	}
}

