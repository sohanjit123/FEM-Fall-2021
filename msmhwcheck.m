 syms x1 x2 x3 X1 X2 X3 a k t real positive


 x1= (a^(-.5))*(X1*cos(a*t*X3)-X2*sin(a*t*X3));
 x2= (a^(-.5))*(X1*sin(a*t*X3)+X2*cos(a*t*X3));
 x3=a*X3;

 F= [diff(x1,X1) diff(x1,X2) diff(x1,X3);diff(x2,X1) diff(x2,X2) diff(x2,X3);diff(x3,X1) diff(x3,X2) diff(x3,X3)]

 
