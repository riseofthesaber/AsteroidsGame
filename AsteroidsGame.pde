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
boolean rapidshot = false;
String type="Normal";
int numRock=(int)(Math.random()*21)+10;
int hits=0;
int score=0;
int charge=10;
int goal=1000;
int needed;

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
	//display hp and score
	if(goal-charge>0){
		needed= goal-charge;
	}else{
		needed=0;
	}
  textSize(40);
  fill(200, 200, 200);
  text("Energy: "+ charge, 600,100);
  text("Type: "+ type,100,100 );
   text("Score: "+ score ,100,600 );
    textSize(20);
   text("Energy Needed: "+needed,600,600); 

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
					charge++;
					break;
				}
			}

	}
	for(int i = 0; i < rock.size(); i++){
		rock.get(i).show();
		rock.get(i).move();
		if(dist(rock.get(i).getX(),rock.get(i).getY(),ship.getX(),ship.getY())<20){
			rock.remove(i);
			if (charge>0){
				charge--;
			}
		}
	}
	if(rock.size()<1){
		charge=charge+score;
		score++;
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
		ship.accelerate(.125);
	}
	if(ba==true){
		ship.accelerate(-.025);
	}
	if(gun==true && charge>0){
		blast.add(new Bullet(ship));
		charge--;
		if(rapidshot==false){
			gun=false;
		}
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
	if(key==32 && charge>0){
		gun = true;
	}
	if(key=='e'){
		if(rapidshot==false){
			rapidshot=true;
			type="Rapid";
		}else{
			rapidshot=false;
			type="Normal";
		}
	}
	if(key=='q'&&charge>=goal){
		charge-=goal;
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

