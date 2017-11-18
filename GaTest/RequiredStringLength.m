function [ m ] = RequiredStringLength( a,b )
%RequiredStringLength 计算需要的二进制比特数
%   用于基因算法时将表达式取值范围转换为二进制比特，求需要的二进制比特数
%   转换取值范围至基因
%参数说明:m为当前参数范围转换为二进制时需要的二进制比特长度
%利用公式:2^(m-1)<(b-a)*1E4<=2^m-1
m11=log((b-a)*10^4)/log(2)+1;
m12=log((b-a)*10^4+1)/log(2);
m=fix((m11+m12)/2+0.5);
end

