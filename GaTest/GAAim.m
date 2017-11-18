function [ y] = GAAim( x1,x2 )
%GAAim 试验中需要用GA计算的函数
%f(x1,x2)=21.5+x1*sin(4*pi*x1)+x2*sin(20*pi*x2)
%-3.0<=x1<=12.1
%4.1<=x2<=5.8
y=21.5+x1.*sin(4*pi.*x1)+x2.*sin(20*pi.*x2);
end

