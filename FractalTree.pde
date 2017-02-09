private double fractionLength = .85; 
private int smallestBranch = 15; 
private double branchAngle = .3;  
public void setup() 
{   
	size(640,480);    
	//noLoop(); 
} 
public void draw() 
{   
	frameRate(20);
	background(0);   
	stroke(0,255,0);
	strokeWeight(1.5);   
	line(320,480,320,380);   
	drawBranches(320,380,100,3*Math.PI/2+(Math.random()*2)-1);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1=angle+branchAngle+Math.random();
	double angle2=angle-branchAngle+Math.random();
	branchLength=branchLength*fractionLength;
	int endX1=(int)(branchLength*Math.cos(angle1)+x);
	int endY1=(int)(branchLength*Math.sin(angle1)+y);
	int endX2=(int)(branchLength*Math.cos(angle2)+x);
	int endY2=(int)(branchLength*Math.sin(angle2)+y);
	stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);
	if(branchLength>smallestBranch)
	{
		drawBranches(endX1,endY1,branchLength,angle1);
		drawBranches(endX2,endY2,branchLength,angle2);
	}
} 
