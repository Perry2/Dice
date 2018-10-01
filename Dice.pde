void setup()
{
	noLoop();
	size(500,500);
}
void draw()
{
	background((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	for(int i = 0;i < 500;i += 50)
	{
		for(int a = 0;a < 500;a += 50)
			{
			Die bob = new Die(i,a);
			bob.show();
			bob.roll();
		}
	}
}
void mousePressed()
{
	redraw();
}
class Die
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
		if(rNum == 1){
			fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
			ellipse(myX + 25, myY + 25, 10, 10);
		}else if(rNum == 2){
			fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 40, myY + 40, 10, 10);
		}else if(rNum == 3){
			fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
			ellipse(myX + 40, myY + 10, 10, 10);
			ellipse(myX + 25, myY + 25, 10, 10);
			ellipse(myX + 10, myY + 40, 10, 10);
		}else if(rNum == 4){
			fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 10, myY + 40, 10, 10);;
			ellipse(myX + 40, myY + 10, 10, 10);
			ellipse(myX + 40, myY + 40, 10, 10);
		}else if(rNum == 5){
			fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 40, myY + 10, 10, 10);
			ellipse(myX + 25, myY + 25, 10, 10);
			ellipse(myX + 10, myY + 40, 10, 10);
			ellipse(myX + 40, myY + 40, 10, 10);
		}else if(rNum ==6){
			fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 25, myY + 10, 10, 10);
			ellipse(myX + 40, myY + 10, 10, 10);
			ellipse(myX + 10, myY + 40, 10, 10);
			ellipse(myX + 25, myY + 40, 10, 10);
			ellipse(myX + 40, myY + 40, 10, 10);
		}
	}
	void show()
	{			
		fill(255);
		rect(myX, myY, 50,50, 10);
	}

}