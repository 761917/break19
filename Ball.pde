class Ball{
  double xSpeed, ySpeed;
  int xPos,yPos;
  Ball(int x, int y, double xs, double ys)
  {
    xPos=x;
    yPos=y;
    xSpeed=xs;
    ySpeed=ys;
  }
  void move()
  {
    xPos+=xSpeed;
    yPos+=ySpeed;
    fill(100,50,150);
    ellipse(xPos,yPos,50,50);
    if(xPos+25>width || xPos-25<0)
      xSpeed*=-1;
    if(yPos+25>height||yPos-25<0)
      ySpeed*=-1;
  }
  int getX()
  {
    return xPos;
  }
  int getY()
  {
    return yPos;
  }
  void setXS(double xs)
  {
    xSpeed=xs;
  }
  void setYS(double ys)
  {
    ySpeed=ys;
  }
   double getXS()
  {
   return xSpeed;
  }
   double getYS()
  {
   return ySpeed; 
  }
}
