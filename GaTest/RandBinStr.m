function [ BinOutput ] = RandBinStr( BitCount )
%   RandBin 生成字符串型的BitCount长度的二进制随机序列
%   用于遗传算法中初始化种群
BinOutput=round(rand(BitCount,1))';
BinOutput=int2str(uint8(BinOutput));


end

