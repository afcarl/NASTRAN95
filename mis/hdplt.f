      SUBROUTINE HDPLT (X1,Y1,IJ,IM)
C
C     PLOTS POINTS GOVERNED BY THE VALUE OF IM.
C
C     NOTE THAT CALL PLOT(X,Y,2) MEANS MOVE PEN FROM THE CURRENT
C     POSITION TO THE POINT,(X,Y),WITH THE PEN DOWN.
C
C     CALL PLOT(X,Y,3) MEANS MOVE THE PEN FROM THE CURRENT POSITION
C     TO THE POINT,(X,Y), WITH THE PEN UP.
C
      LOGICAL         DEBUG
      INTEGER         PPEN
      DIMENSION       X1(4),Y1(4)
      COMMON /DRWDAT/ DUM(3),PPEN
      COMMON /SYSTEM/ IBUF,NOUT
      DATA    DEBUG / .FALSE./
C
      IF (DEBUG) WRITE (NOUT,1000)IJ,IM,(X1(I),I=1,4),(Y1(J),J=1,4)
 1000 FORMAT (7H HDPLT ,2I3,8F12.5)
      IF (IM .EQ. 1) GO TO 20
      XVALUE = (X1(2))/X1(4)
      YVALUE = (Y1(2))/Y1(4)
      IF (IJ .EQ. 0) GO TO 10
      CALL LINE (XOLD,YOLD,XVALUE,YVALUE,PPEN,0)
      XOLD = XVALUE
      YOLD = YVALUE
      GO TO 30
   10 CONTINUE
      XOLD = XVALUE
      YOLD = YVALUE
      IJ = 1
      GO TO 30
   20 CONTINUE
      IJ = 0
   30 CONTINUE
      RETURN
      END
