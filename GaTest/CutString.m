function [ OutString1,OutString2 ] = CutString( InString,number )
%CutString ���ַ����ָ�Ϊ�����ַ�����numberΪ�ָ�λ�����Ӵ�1Ϊ�ָ��ǰ���ָ�㣬�Ӵ�2Ϊ�ָ�㵽ԭ�ַ���β
%   �����Ŵ��㷨�еĶ������ַ����и�
InString=char(InString);
number=double(number);
OutString1=InString(1:number);
OutString2=InString(number+1:length(InString));
end

