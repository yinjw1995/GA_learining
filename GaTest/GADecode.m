function [ x] = GADecode( SubString,a,b )
%GADecode 将基因算法中的所求二进制子串转换为十进制
%x=a+decimal(substring)*(b-a)/(2^m-1)
x=a+bin2dec(SubString)*(b-a)/(2^length(SubString)-1);




end

