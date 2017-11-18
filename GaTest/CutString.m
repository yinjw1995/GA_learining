function [ OutString1,OutString2 ] = CutString( InString,number )
%CutString 将字符串分割为两个字符串，number为分割位数，子串1为分割点前及分割点，子串2为分割点到原字符串尾
%   用于遗传算法中的二进制字符串切割
InString=char(InString);
number=double(number);
OutString1=InString(1:number);
OutString2=InString(number+1:length(InString));
end

