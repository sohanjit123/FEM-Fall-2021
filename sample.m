

x= 1:0.01:1.05;

for i = 1 :length(x)
s1(i)= (2+(2/x(i)))*(x(i)*x(i)-(1/x(i)));
s2(i)= (2)*(x(i)*x(i)-(1/x(i)));

% 
% p(i)= ((2+(2/x(i)))*(x(i)*x(i)-(1/x(i))))/x(i);
end

plot(x,s1,'r-')

hold on

plot(x,s2,'k-')
legend