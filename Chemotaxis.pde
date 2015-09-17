 Bacteria bac; //declare bacteria variables here   
 void setup()   
 {     
 	size(400,400);
 	frameRate(2);
 	bac = new Bacteria(200,200); //initialize bacteria variables here   
 }   
 void draw()   
 {    
 	background(0,0,0);
 	bac.move();
 	bac.show();
//move and show the bacteria   
 }  
 class Bacteria    
 {
 	int myX, myY,num1,num2; 
 	Bacteria(int x, int y)
 	{
 		myX=x;
 		myY=y;
 	}    
 	void move()
 	{
 		num1 = (int)(Math.random()*4)-2;
 		num2 = (int)(Math.random()*4)-2;
 		myX = myX+num1;
 		myY = myY+num2;
 	}
 	void show()
 	{
 		fill(200,200,255);
 		ellipse(myX,myY,15,15);	
 	}	//lots of java!   
 }    