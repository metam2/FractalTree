private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	//drawBranches(??,??,??,??);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle, double windAngle) 
{   
	//your code here    
	if(branchLength <= 10)
		{
			
		}
	else
	{
		int x1 = x + (int)(len * Math.cos(angle));
		int x2 = x - (int)(len * Math.cos(angle));
		int y1 = y + (int)(len * Math.sin(andgle));
		line(x, y, )
	}
} 
