function [ OutputString1,OutputString2 ] = CrossOver( InputString1,InputString2,num )
%   CrossOver �����Ŵ��㷨�������������ַ����н����ӽ�
%   InputString1,InputString2Ϊ�������������numΪ�ӽ�����ʼλ��
%   �ӽ�����ʼλ֮ǰ�����˻��򲻱䣬��ʼλ֮����ʼλ��������������
InputString1=char(InputString1);
InputString2=char(InputString2);



OutputString1=InputString1(1:num-1);
OutputString2=InputString2(1:num-1);
OutputString1=[OutputString1 InputString2(num:length(InputString2))];
OutputString2=[OutputString2 InputString1(num:length(InputString1))];
 


end

