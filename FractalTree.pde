private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
private double wind = 0;
private double angle = 0;
private double count = 0;
public void setup() 
{   
	size(640,480);   
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	if((angle >= 0 && count <= 0) || (angle <= 0 && count >= 0))
		{
			angle = (Math.random() * 0.2) - 0.1;
			count = angle;
		}
	
	wind += angle * 0.01;
	count -= angle * 0.01;
	drawBranches(320,380, 80, PI * 3 / 2, wind); 
} 

public void drawBranches(int x,int y, double branchLength, double angle, double windAngle) 
{   
	//your code here    
	if(branchLength <= 10)
		{
			
		}
	else
	{
		int x1 = x + (int)(branchLength * Math.cos(angle - branchAngle + windAngle));
		int x2 = x + (int)(branchLength * Math.cos(angle + branchAngle + windAngle));
		int y1 = y + (int)(branchLength * Math.sin(angle - branchAngle + windAngle));
		int y2 = y + (int)(branchLength * Math.sin(angle + branchAngle + windAngle));

		line(x, y, x1, y1);
		line(x, y, x2, y2);
		drawBranches(x1, y1, branchLength * fractionLength, angle - 2 * branchAngle, windAngle * 1.3);
		drawBranches(x2, y2, branchLength * fractionLength, angle + 2 * branchAngle, windAngle * 1.3);
	}
} 
