function [ OutputString ] = Mutation( InputString,num )
%Mutation �Ŵ��㷨�ı���
%   ���Ŵ��㷨�Ķ����ƴ���ĳλ���б��룬��1��Ϊ0����0��Ϊ1
InputString=char(InputString);
OutputString=InputString;
if OutputString(1,num)=='1'
    OutputString(1,num)='0';
 else
    OutputString(1,num)='1';
end

end

