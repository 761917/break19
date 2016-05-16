Paddle p;
Ball b;
CollisionDetect cd;
void setup(){
  size(1800,900);
  smooth();
  p=new Paddle();
  b=new Ball(100,100,3,4);
  cd=new CollisionDetect();
}
void draw(){
  background(7,7,62);
  p.setCoord(mouseX,825);
  b.move();
  cd.ballPaddle(b,p);
}
