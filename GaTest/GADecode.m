function [ x] = GADecode( SubString,a,b )
%GADecode �������㷨�е�����������Ӵ�ת��Ϊʮ����
%x=a+decimal(substring)*(b-a)/(2^m-1)
x=a+bin2dec(SubString)*(b-a)/(2^length(SubString)-1);




end

