function [ OutputString ] = Mutation( InputString,num )
%Mutation 遗传算法的变异
%   将遗传算法的二进制串的某位进行编译，将1变为0，将0变为1
InputString=char(InputString);
OutputString=InputString;
if OutputString(1,num)=='1'
    OutputString(1,num)='0';
 else
    OutputString(1,num)='1';
end

end

