class Paddle
{
  int xPos, yPos;
  void setCoord(int x,int y){
    xPos=x;
    yPos=y;
    fill(255,5,5);
    rect(x-50,y-12,100,24);
    triangle(x-50,y-12,x-50,y+12,x-130,y+12);
    triangle(x+50,y+12,x+50,y-12,x+130,y+12);
  }
  int getX()
  {
    return xPos;
  }
  int getY()
  {
    return yPos;
  }
}
