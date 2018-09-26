void setup()
{
	noLoop();
	size(500,500);
}
void draw()
{
	background((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	Die bob = new Die(10,10);
	bob.roll();
	bob.show();
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
		for (int i = 1; i < 6; ++i) {			
		
			if(rNum == i){
				fill(255);
				rect(myX, myY, 50,50, 10);
				fill(0);
				ellipse(myX +25, myY + 25, 10, 10);
			}else{
				fill(255);
				rect(myX, myY, 50, 50, 10);
				fill(0);
				ellipse(myX +25, myY + 25, 10, 10);
			}
		}
	}
}