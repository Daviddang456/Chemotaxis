 //declare bacteria variables here
 PImage spiderman; 
 PImage venom;  
 void setup(){
 	size(570,713);   
      
 	//initialize bacteria variables here 
 	spiderman = loadImage("Spidey symbol.jpg");  
 	venom = loadImage("Black Spidey symbol.jpg");
 		image(spiderman,0,0, 570, 713);//move and show the bacteria  
 	image(venom,0,0,570,713); 
 }   
 void draw()   
 {    double x = mouseX;
      double y= mouseY;
 	fill(255,0,0);
    ellipse((int) x, (int) y, 50, 50);
 }  
 class Bacteria    
 {     
 	//lots of java!   
 }    