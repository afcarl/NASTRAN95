      SUBROUTINE STPPT2(INPUT,W1JK,W2JK)
      INTEGER W1JK,W2JK
      COMPLEX ONE,ZERO
      COMMON /PACKX/ ITI,IT0,II,NN,INCR
      COMMON /AMGP2/ TW1JK(7),TW2JK(7)
      ONE = (1.0,0.0)
      ZERO = (0.0,0.0)
      CALL FREAD(INPUT,NJ,1,1)
      DO 10 I=1,NJ
      NN = II
      CALL PACK(ONE,W1JK,TW1JK)
      CALL PACK(ZERO,W2JK,TW2JK)
      II = II+1
   10 CONTINUE
      RETURN
      END
