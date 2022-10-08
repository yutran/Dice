void setup()
{
  size(420,400);
  noLoop();
}
int sum = 0;
void draw()
{
  background((int)(Math.random()*255));
  for(int y = 10; y <=300; y = y+50)
  {
    for(int x = 10; x<=400; x = x+50)
    {
      Die  bob = new Die(x,y);
      bob.show();  
    } 
  }
 fill(0);
 textSize(25);
 text("total: " + sum, 155, 360);
 textSize(15);
 text("click", 190, 380);
}
void mousePressed()
  {
      redraw();
  }
class Die
{
  int myX, myY, myZ;
  Die(int x, int y)
  {
    myX = x;
    myY = y;
    roll();
    sum += myZ;
    
  }
  void roll()
  { 
  myZ = (int)(Math.random()*6)+1;  
  }
  void show()
  {
    fill(230,230,230);
    rect(myX,myY,50,50);
    
    if (myZ == 1){
    fill(0);
    ellipse(myX+25,myY+25,10,10);  
    }
    else if (myZ == 2){  
    fill(0);
    ellipse(myX+33,myY+25,10,10);  
    ellipse(myX+18,myY+25,10,10);
    }
    else if (myZ == 3){
    fill(0);
    ellipse(myX+10,myY+10,10,10);
    ellipse(myX+25,myY+25,10,10);
    ellipse(myX+40,myY+40,10,10);
    }
  else if(myZ == 4){
    fill(0);
    ellipse(myX+15, myY+20, 10,10);
    ellipse(myX+15, myY+35, 10, 10);
    ellipse(myX+35, myY+20, 10, 10);
    ellipse(myX+35, myY+35, 10, 10);
      }
      else if(myZ == 5){
        fill(0);
        ellipse(myX+10, myY+40, 10, 10);
        ellipse(myX+10, myY+10, 10, 10);//top left
        ellipse(myX+25, myY+25, 10,10);//middle
        ellipse(myX+40, myY+10, 10, 10);//top right
        ellipse(myX+40, myY+40, 10,10);
      }
    else if(myZ == 6){
      fill(0);
      ellipse(myX+15, myY+10, 10, 10);
      ellipse(myX+15, myY+40, 10, 10);
      ellipse(myX+15, myY+25, 10, 10);
      ellipse(myX+35, myY+40, 10, 10);
      ellipse(myX+35, myY+25, 10, 10);
      ellipse(myX+35, myY+10, 10, 10);   
    }      
  }
}
