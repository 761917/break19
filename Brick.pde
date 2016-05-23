class Brick{
  int xPos,yPos,col1,col2,col3;
  boolean isBroken;
  Brick(int x, int y, int c1,int c2, int c3){
    xPos=x;
    yPos=y;
    isBroken=false;
    col1=c1;
    col2=c2;
    col3=c3;
  }
  void display()
  {
    fill(col1,col2,col3);
    rect(xPos,yPos,100,50);
  }
  void brickBreak()
  {
    isBroken=true;
  }
  void setColor(int r, int g, int b)
  {
    col1=r;
    col2=g;
    col3=b;
  }
  boolean isBroken()
  {
    return isBroken;
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