function [ BinOutput ] = RandBinStr( BitCount )
%   RandBin �����ַ����͵�BitCount���ȵĶ������������
%   �����Ŵ��㷨�г�ʼ����Ⱥ
BinOutput=round(rand(BitCount,1))';
BinOutput=int2str(uint8(BinOutput));


end

