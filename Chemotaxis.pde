 Bacteria [] bac; //declare bacteria variables here   
 void setup()   
 {     
 	size(400,400);
 	bac = new Bacteria[15];
 	for (int i = 0; i<bac.length; i++)
 	{
 		bac[i]= new Bacteria(200,200);
 	} //initialize bacteria variables here   
 }   
 void draw()   
 {    
 	background(0,0,0);
 	 	for (int i = 0; i<bac.length; i++)
 	{
 		bac[i].move();
 		bac[i].show();
 	}
//move and show the bacteria   
 }  
 class Bacteria    
 {
 	int myX, myY,num1,num2,n; 
 	Bacteria(int x, int y)
 	{
 		myX=x;
 		myY=y;
 	}    
 	void move()
 	{
 		num1 = (int)(Math.random()*5)-2;
 		num2 = (int)(Math.random()*5)-2;
 		myX = num1+myX;
 		myY = num2+myY;
 	}
 	void show()
 	{
		n = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 		ellipse(myX,myY,15,15);	
 		fill(n);
 	}	//lots of java!   
 }    