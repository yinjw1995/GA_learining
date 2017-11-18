function [ r ] = CloseRand( a,b,sizeX,sizeY )
%CloseRand 生成闭区间[a,b]的随机数
%   [a,b]
r = a + (b-a).*rand(sizeX,sizeY);
end

