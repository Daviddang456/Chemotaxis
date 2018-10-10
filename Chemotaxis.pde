int radius = 50;
int intX = 50;
int intY = 50;
int x = 50;
int y = 50;
boolean gameOver = false;
Bacteria [] bug;
void setup(){
  size(500, 500);
  bug = new Bacteria[100];
  for(int i = 0; i < bug.length; i++){
     bug[i] = new Bacteria();
   }
}
void draw(){
  background(0);
  fill(0,255,0);
  if(gameOver == false) {
    ellipse((int)mouseX,(int)mouseY, radius, radius);
  }
  for(int i = 0; i < bug.length; i++){
    fill(60,255,230);
    bug[i].show();
    if(dist(bug[i].coordinateX, bug[i].coordinateY, (int)mouseX, (int)mouseY) < 10){
      gameOver = true;
      background(0);
      fill(255);
      textSize(32);
      text("Game Over",165,250);
      noLoop();
    }
    if(gameOver == false) {
      if(mouseX < bug[i].coordinateX){
        bug[i].move(-3,0);
      }
      if(mouseX >= bug[i].coordinateX){
        bug[i].move(1,0);
      }
      if(mouseY < bug[i].coordinateY){
         bug[i].move(0,-3);
      }
      if(mouseY >=bug[i].coordinateY){
        bug[i].move(0,1);
      }
      
    }
    }
  }
 
class Bacteria{
  int walkX;
  int walkY;
  int coordinateX;
   int coordinateY;
  Bacteria(){}
 
  void move(int x, int y){
    walkX = walkX + (int)(Math.random() * 2) + x; // 0,1,2,3,4
    walkY = walkY + (int)(Math.random() * 2) + y;
  }
 
  void show(){
    coordinateX = 50 + walkX;
    coordinateY = 50 + walkY;
    if(gameOver == false) {
      ellipse(coordinateX, coordinateY, radius, radius);
    }
  }
}
