void setup()
{
	noLoop();
	size(500,500);
}
void draw()
{
	background((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	Die bob = new Die(10,10);
	//bob.roll();
	bob.show();
	bob.roll();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, rNum;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		int rNum = ((int)(Math.random()*6))+1; 
	}
	void show()
	{			
		fill(255);
		rect(myX, myY, 50,50, 10);
		fill(0);	
		if(rNum == 1){
			ellipse(myX + 25, myY + 25, 10, 10);
		}else if(rNum == 2){
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 40, myY + 40, 10, 10);
		}else if(rNum == 3){
			ellipse(myX + 40, myY + 10, 10, 10);
			ellipse(myX + 25, myY + 25, 10, 10);
			ellipse(myX + 10, myY + 40, 10, 10);
		}else if(rNum == 4){
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 10, myY + 40, 10, 10);;
			ellipse(myX + 40, myY + 10, 10, 10);
			ellipse(myX + 40, myY + 40, 10, 10);
		}else if(rNum == 5){
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 40, myY + 10, 10, 10);
			ellipse(myX + 25, myY + 25, 10, 10);
			ellipse(myX + 10, myY + 40, 10, 10);
			ellipse(myX + 40, myY + 40, 10, 10);
		}else if(rNum ==6){
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 25, myY + 10, 10, 10);
			ellipse(myX + 40, myY + 10, 10, 10);
			ellipse(myX + 10, myY + 40, 10, 10);
			ellipse(myX + 25, myY + 40, 10, 10);
			ellipse(myX + 40, myY + 40, 10, 10);
		}
	}
}