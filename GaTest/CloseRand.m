function [ r ] = CloseRand( a,b,sizeX,sizeY )
%CloseRand ���ɱ�����[a,b]�������
%   [a,b]
r = a + (b-a).*rand(sizeX,sizeY);
end

