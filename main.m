%-------------����˵��----------------

%

% ������?

%---------------------------------------

function main()

clear

clc

popsize = 100; %��Ⱥ��С

chromlength = 10; %�����Ʊ��볤��

pc = 0.6; %�������

pm = 0.001; %�������

pop = initpop(popsize,chromlength); %��ʼ��Ⱥ



for i=1:100

[objvalue] = cal_objvalue(pop); %������Ӧ��ֵ������ֵ��

fitvalue = objvalue;

[newpop] = selection(pop,fitvalue); %ѡ�����

[newpop] = crossover(newpop,pc); %�������

[newpop] = mutation(newpop,pm); %�������

pop = newpop; %������Ⱥ

[bestindividual,bestfit]=best(pop,fitvalue);%Ѱ�����Ž�

x2 = binary2decimal(bestindividual);



x1 = binary2decimal(newpop);

[y1] = cal_objvalue(newpop);

if mod(i,10)==0

figure;



fplot('10*sin(5*x)+7*abs(x-5)+10',[0 10]);

hold on;

title(['��������Ϊ n=' num2str(i)]);

plot(x1,y1,'*');

end

end

fprintf('the best X is --->>%5.2f\n',x2);

fprintf('the best Y is --->>%5.2f\n',bestfit);

%-------------����˵��----------------

% ��ʼ����Ⱥ��С

% ���������

% popsize:��Ⱥ��С

% chromlength��Ⱦɫ�峤��--��ת���Ķ����Ƴ���

% ���������

% pop����Ⱥ

%---------------------------------------

function pop = initpop(popsize,chromlength)

pop = round(rand(popsize,chromlength));



%-------------����˵��----------------

% ������ת��ʮ���ƺ���

% ���������

% ��������Ⱥ

% ���������

% ʮ������ֵ

%---------------------------------------

function pop2 = binary2decimal(pop)

[px,py]=size(pop);

for i=1:py

pop1(:,i) = 2.^(py-i).*pop(:,i);

end

%sum(.,2)������ͣ��õ��е�����

temp = sum(pop1,2);

pop2 = temp*10/1023;



%-------------����˵��----------------

% ���㺯��Ŀ��ֵ

% ���������

% ��������ֵ?

% ���������

% Ŀ�꺯��ֵ

%---------------------------------------

function [objvalue]=cal_objvalue(pop)

x = binary2decimal(pop);

%ת����������Ϊx�����ı仯��Χ����ֵ

% x = temp*10/1023;

% objvalue = 10sin(5x)+7cos(4x);

% objvalue = 10sin(x)+7x+10

objvalue = 10*sin(5*x)+7*abs(x-5)+10;



%-------------����˵��----------------

%?

% ���������

% pop �� ��������Ⱥ

% fitvalue �� ��Ӧ��ֵ

% ���������

% newpop��ѡ���Ժ�Ķ�������Ⱥ

%---------------------------------------

function [newpop] = selection(pop,fitvalue)

%��������

[px,py]=size(pop);

totalfit = sum(fitvalue);

p_fitvalue = fitvalue/totalfit;

p_fitvalue = cumsum(p_fitvalue);%�����������

%-------

ms = sort(rand(px,1));%��С��������

fitin = 1;

newin = 1;

while newin<=px

if (ms(newin))<p_fitvalue(fitin)

newpop(newin,:)=pop(fitin,:);

newin=newin+1;

else fitin=fitin+1;

end

end



%-------------����˵��----------------

%?

% ���������

% pop:�����Ƶĸ�����Ⱥ��

% pc������ĸ���

% ���������

% newpop����������Ⱥ��?

%---------------------------------------

function [newpop]=crossover(pop,pc)

[px,py]=size(pop);

newpop = ones(size(pop));

for i=1:2:px-1

if(rand<pc)

cpoint = round(rand*py);

newpop(i,:) = [pop(i,1:cpoint),pop(i+1,cpoint+1:py)];

newpop(i+1,:) = [pop(i+1,1:cpoint),pop(i,cpoint+1:py)];

else

newpop(i,:)=pop(i,:);

newpop(i+1,:)=pop(i+1,:);

end

end



%-------------����˵��----------------

%?

% ���������

% pop �� ��������Ⱥ

% pm �� �������

% ���������

% newpop �� �����Ժ����Ⱥ

%---------------------------------------

function [newpop] = mutation(pop,pm)

[px,py] = size(pop);

newpop = ones(size(pop));

for i=1:px

if(rand<pm)

mpoint = round(rand*py);

if mpoint<=0

mpoint=1;

end

newpop(i,:) = pop(i,:);

if newpop(i,mpoint)==0

newpop(i,mpoint)=1;

else newpop(i,mpoint)=0;

end

else

newpop(i,:)=pop(i,:);

end

end



%-------------����˵��----------------

%?

% ���������?

% pop : ��Ⱥ

% fitvalue �� ��Ⱥ��Ӧ��?

%

% ���������

% bestindividual �� ��Ѹ��壨�����Ƹ��壩

% bestfit �� �����Ӧ��ֵ

%---------------------------------------

function [bestindividual,bestfit]=best(pop,fitvalue)

[px,py]=size(pop);

bestindividual = pop(1,:);

bestfit = fitvalue(1);

for i=2:px

if fitvalue(i)>bestfit

bestindividual = pop(i,:);

bestfit = fitvalue(i);

end

end
