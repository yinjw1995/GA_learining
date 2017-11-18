function [ Outstring ] = DeInStringBlank( Instring )
%DeInStringBlank 去处字符串中数字之间的空格
index= Instring==' ';
Instring(index)='';
Outstring=Instring;
end

