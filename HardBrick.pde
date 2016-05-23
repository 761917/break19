class HardBrick extends Brick{
  int howBroken;
  int[] randXArray;
  int[] randYArray;
  HardBrick(int x, int y, int c1,int c2, int c3){
    super(x,y,c1,c2,c3);
    howBroken=2;
    randXArray=new int[8];
    randYArray=new int[8];
    for(int i=0; i<randXArray.length; i++)
    {
      randXArray[i]=(int)random(100)+super.getX();
    }
    for(int i=0; i<randYArray.length; i++)
    {
      randYArray[i]=(int)random(50)+super.getY();
    }
  }
  void brickBreak()
  {
    howBroken--;
    if(howBroken<=0)
      isBroken=true;
  }
  void setColor(int r, int g, int b)
  {
    super.setColor(r/2,g/2,b/2);
  }
  void display()
  {

    super.display();
    fill(255);
    if(howBroken==1)
    {
      for(int i=0; i<randXArray.length; i++)
      {
        line(randXArray[i],randYArray[i],randXArray[7-i],randYArray[7-i]);
      }
    }
  }
}