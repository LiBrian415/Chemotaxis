import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {

 Bacteria bac; //declare bacteria variables here   
 public void setup()   
 {     
 	size(400,400);
 	frameRate(2);
 	bac = new Bacteria(200,200); //initialize bacteria variables here   
 }   
 public void draw()   
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
 	public void move()
 	{
 		num1 = (int)(Math.random()*4)-2;
 		num2 = (int)(Math.random()*4)-2;
 		myX = myX+num1;
 		myY = myY+num2;
 	}
 	public void show()
 	{
 		fill(200,200,255);
 		ellipse(myX,myY,15,15);	
 	}	//lots of java!   
 }    
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
