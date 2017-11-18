function [ OutputString1,OutputString2 ] = CrossOver( InputString1,InputString2,num )
%   CrossOver 用于遗传算法将两个二进制字符串列进行杂交
%   InputString1,InputString2为输入的两个基因，num为杂交的起始位数
%   杂交后，起始位之前的两端基因不变，起始位之后及起始位将交换两个基因
InputString1=char(InputString1);
InputString2=char(InputString2);



OutputString1=InputString1(1:num-1);
OutputString2=InputString2(1:num-1);
OutputString1=[OutputString1 InputString2(num:length(InputString2))];
OutputString2=[OutputString2 InputString1(num:length(InputString1))];
 


end

