Paddle p;
Ball bl;
CollisionDetect cd;
int r,g,b;
ArrayList<Brick> bricks;
void setup(){
  size(1800,900);
  smooth();
  p=new Paddle();
  bl=new Ball(900,800,3,4);
  cd=new CollisionDetect();
  bricks=new ArrayList<Brick>();
  
  for(int yPos=0; yPos<height/3; yPos+=50)
  {
    for(int xPos=0; xPos<width; xPos+=100)
    {
      bricks.add(new Brick(xPos,yPos,255,255,255));
    }
  }

}
void draw(){
  background(7,7,62);
  p.setCoord(mouseX,825);
  bl.move();
  cd.ballPaddle(bl,p);
  for(int i=bricks.size()-1; i>=0; i--){
    cd.brickBall(bricks.get(i),bl);
    bricks.get(i).display();
    if(bricks.get(i).isBroken()==true)
    {
      int x=bricks.get(i).getX();
      int y=bricks.get(i).getY();
      bricks.remove(bricks.get(i));
      r=(int)random(255);
      g=(int)random(255);
      b=(int)random(255);
      for(int j=bricks.size()-1; j>=0; j--){
        if(bricks.get(j).getX()==x)
          bricks.get(j).setColor(r,g,b);
      }
    }
  }
}