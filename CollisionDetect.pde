class CollisionDetect{
  void ballPaddle(Ball b, Paddle p)
  {
    int bx,by,px,py;
    bx=b.getX();
    by=b.getY();
    px=p.getX();
    py=p.getY();
    double ankh;
    if(by+25>py-12 && by<py && bx<px+155 && bx>px-155)
    {
      b.setYS(-Math.abs(b.getYS()));
      ankh=-((((double)bx-px)/130)*b.getYS()*1.75);
      b.setXS(ankh);
    }

  }
  void brickBall(Brick bk,Ball bl){
     int blx,bly,bkx,bky;
     blx=bl.getX();
     bly=bl.getY();
     bkx=bk.getX();
     bky=bk.getY();
     if(blx<bkx+100 && blx>bkx && bly-25<bky+50 && bly>bky)
     {
       bl.setYS(Math.abs(bl.getYS()));
       bk.brickBreak();
     }
     if(blx<bkx+100 && blx>bkx && bly+25>bky && bly<bky)
     {
       bl.setYS(-Math.abs(bl.getYS()));
       bk.brickBreak();
     }
     if(blx+25>bkx && blx<bkx && bly>bky && bly<bky+50)
     {
       bl.setXS(-Math.abs(bl.getXS()));
       bk.brickBreak();
     }
     if(blx-25<bkx+100 && blx>bkx+100 && bly>bky && bly<bky+50)
     {
       bl.setXS(Math.abs(bl.getXS()));
       bk.brickBreak();
     }
  }
}