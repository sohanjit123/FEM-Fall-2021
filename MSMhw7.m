clc,clear all

syms k t x1 x2 x3 alpha a p c1 c2 r mu K real positive
% 
 F = [cos(k)/sqrt(alpha) -sin(k)/sqrt(alpha) -alpha*t*x2; sin(k)/sqrt(alpha) cos(k)/sqrt(alpha) alpha*t*x1;0 0 alpha];

% F = [cos(k) -sin(k) -t*x2; sin(k) cos(k) t*x1;0 0 1];

b= F*F';

C =F'*F;
% 
%  subs(subs(b*b,cos(k)^2,1),sin(k)^2,0)
% 
P = [-p 0 0;0 -p 0;0 0 -p];
% sigma= P+mu*b;
% subs(subs(sigma,cos(k)^2,1),sin(k)^2,0);

  sigma = P + 2*(c1+trace(C)*c2)*b -2*c2*b*b;

 FIRST=diff(sigma(1,1),x1)+diff(sigma(1,2),x2)+ diff(sigma(1,3),x3);
 SECOND=diff(sigma(2,1),x1)+diff(sigma(2,2),x2)+ diff(sigma(2,3),x3);
 THIRD=diff(sigma(3,1),x1)+diff(sigma(3,2),x2)+ diff(sigma(3,3),x3);
 r=sqrt(x1^2+x2^2);


% simplify(subs(subs(SECOND,cos(k)^2,1),sin(k)^2,0))


n=[x1/r;x2/r;0];

trac = sigma*n;




% K = 2*c2*alpha*c1*a*t*t+2*c1/alpha+2*c1/alpha/alpha;

%   simplify(subs(trac,p,alpha*t*t*r*r*(2*c2-alpha*c1)+2*c2*alpha+(c1*alpha*a*a*t*t)+(2*c1/alpha)+(2*c2/alpha/alpha)))

%   simplify(subs(trac,p,alpha*t*t*r*r*(2*c2-alpha*c1)+K))

  
  % 









% 
% 
%    simplify(subs(subs(subs(sigma(3,3),cos(k)^2,1),sin(k)^2,0),p,alpha*t*t*r*r*(2*c2-alpha*c1)+2*c2*alpha+(c1*alpha*a*a*t*t)+(2*c1/alpha)+(2*c2/alpha/alpha)))


%    simplify(subs(subs(subs(x1*sigma(2,3)-x2*sigma(1,3),cos(k)^2,1),sin(k)^2,0),p,alpha*t*t*r*r*(2*c2-alpha*c1)+2*c2*alpha+(c1*alpha*a*a*t*t)+(2*c1/alpha)+(2*c2/alpha/alpha)))



% % %  
%  simplify(subs(subs(FIRST*x1/r,cos(k)^2,1),sin(k)^2,0)+subs(subs(SECOND*x2/r,cos(k)^2,1),sin(k)^2,0))
% 
% 

% Moment = x1*sigma(2,3)-x2*sigma(1,3);
% 
% 
%  simplify(subs(subs(Moment,cos(k)^2,1),sin(k)^2,0))

% t1=sigma(2,1)*-x1/r + sigma(2,2)*-x2/r;
% % subs(subs(t1,cos(k)^2,1),sin(k)^2,0)
% 
% % 
%  simplify(subs(simplify(subs(subs(t1,cos(k)^2,1),sin(k)^2,0)),p,2*a*c2*t*t*r*r-c1*a*a*t*t*r*r+K))

% p=2*a*c2*t*t*r*r-c1*a*a*t*t*r*r+K;


