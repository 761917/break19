class CollisionDetect{
  void ballPaddle(Ball b, Paddle p)
  {
    int bx,by,px,py;
    bx=b.getX();
    by=b.getY();
    px=p.getX();
    py=p.getY();
    if(by+25>py-12 && by<py && bx<px+130 && bx>px-130)
      b.setYS(-Math.abs(b.getYS()));
      
  }
}
