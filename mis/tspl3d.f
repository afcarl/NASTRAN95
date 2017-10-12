      SUBROUTINE TSPL3D (TS6)
C
C    TRANSVERSE SHEAR ROUTINE3 FOR CTRPLT1 - DOUBLE PRECISION VERSION
C
      DOUBLE PRECISION TS6(40)
      DOUBLE PRECISION A11,A12,A13,A14,A15,A16,A21,A22,A23,A24,
     1   A25,A26,A31,A32,A33,A34,A35,A36,A37,THK
     2,   X2,XY,Y2,A38,A39,A40,A41
      REAL J11,J12,J22
      COMMON /MATOUT/ EM(6),DUM(12)
      COMMON /SMA1IO/ X,Y,DUM2(4),
     1     A1, A2, A3, AA1, AA2, AA3
      DO 105 I=1,40
      TS6(I)=0.0D0
  105 CONTINUE
      THK=A1+A2*X+A3*Y
      THK1=THK**3/12.0D0
      D11=EM(1)*THK1
      D12=EM(2)*THK1
      D13=EM(3)*THK1
      D22=EM(4)*THK1
      D23=EM(5)*THK1
      D33=EM(6)*THK1
      D21=D12
      D31=D13
      D32=D23
      THKTS=AA1+AA2*X+AA3*Y
      J11=1.0/(EM(6)*THKTS)
      J22=J11
      J12=0.0
      A11=-(J11*D11+J12*D13)
      A12=-(J11*D12+J12*D23)
      A13=-(J11*D13+J12*D33)
      A14=-(J11*D31+J12*D21)
      A15=-(J11*D32+J12*D22)
      A16=-(J11*D33+J12*D23)
      A21=-(J12*D11+J22*D13)
      A22=-(J12*D12+J22*D23)
      A23=-(J12*D13+J22*D33)
      A24=-(J12*D13+J22*D12)
      A25=-(J12*D23+J22*D22)
      A26=-(J12*D33+J22*D32)
      A31=A14+2.0*A13
      A32=A12+2.0*A16
      A33=A24+2.0*A23
      A34=A22+2.0*A26
      A35=A33+A11
      A36=A34+A31
      A37=A25+A32
      X2=X*X
      XY=X*Y
      Y2=Y*Y
      A38=A13+A14
      A39=A12+A16
      A40=A23+A24
      A41=A22+A26
      TS6( 7)=6.0*A11
      TS6( 8)=2.0*A31
      TS6( 9)=2.0*A32
      TS6(10)=6.0*A15
      TS6(11)=24.0*A11*X
      TS6(12)=6.0*(A31*X+A11*Y)
      TS6(13)=4.0*(A32*X+A31*Y)
      TS6(14)=6.0*(A15*X+A32*Y)
      TS6(15)=24.0*A15*Y
      TS6(16)=120.0*(-A11*A11-A13*A21+0.5*A11*X2)
      TS6(17)=12.0*(-A11*A32-A13*A34-A38*A31-A39*A33-A16*A11-A15*A21)
     1   +6.0*(A32*X2+2.0*A31*XY+A11*Y2)
      TS6(18)=12.0*(-A11*A15-A13*A25-A38*A32-A39*A34-A16*A31-A15*A33)
     1   +6.0*(A15*X2+2.0*A32*XY+A31*Y2)
      TS6(19)=24.0*(-A39*A25-A16*A32-A15*A34+A15*XY+0.5*A32*Y2-A38*A15)
      TS6(20)=-120.0*(A16*A15+A15*A25-0.5*A15*Y2)
      TS6(27)=6.0*A21
      TS6(28)=2.0*A33
      TS6(29)=2.0*A34
      TS6(30)=6.0*A25
      TS6(31)=24.0*A21*X
      TS6(32)=6.0*(A33*X+A21*Y)
      TS6(33)=4.0*(A34*X+A33*Y)
      TS6(34)=6.0*(A25*X+A34*Y)
      TS6(35)=24.0*A25*Y
      TS6(36)=120.0*(-A21*A11-A23*A21+0.5*A21*X2)
      TS6(37)=12.0*(-A21*A32-A23*A34-A40*A31-A41*A33-A26*A11-A25*A21)
     1   +6.0*(A34*X2+2.0*A33*XY+A21*Y2)
      TS6(38)=12.0*(-A21*A15-A23*A25-A40*A32-A41*A34-A26*A31-A25*A33)
     1   +6.0*(A25*X2+2.0*A34*XY+A33*Y2)
      TS6(39)=24.0*(-A41*A25-A26*A32-A25*A34+A25*XY+0.5*A34*Y2-A40*A15)
      TS6(40)=-120.0*(A26*A15+A25*A25-0.5*A25*Y2)
      RETURN
      END
