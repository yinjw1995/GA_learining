function [ Outstring ] = DeInStringBlank( Instring )
%DeInStringBlank ȥ���ַ���������֮��Ŀո�
index= Instring==' ';
Instring(index)='';
Outstring=Instring;
end

