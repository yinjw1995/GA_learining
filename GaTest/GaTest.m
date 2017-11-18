clear all;
clc;

hold on;
%fid=fopen('log.txt','W');
%�Ŵ��㷨��ʾ����1
%��ʼ����Ⱥ����
PopSize=1000;
LastMax=0;
NowMax=1;
Generation=1;
%������
MutationRat=.2;
%�ӽ���
CrossOverRat=0.5;
%1���������������λ������������ת��Ϊ������
m1=RequiredStringLength(-3.0,12.1);
m2=RequiredStringLength(4.1,5.8);
m=m1+m2;
%1����ʼ����Ⱥ
Genies='';
for i=1:PopSize;
    Genies(i,:)=DeInStringBlank(RandBinStr(m));
end
%while NowMax-LastMax>1e-7
while Generation<2000 
Generation=Generation+1;

        %ģ���ӽ�
        for i=1:PopSize;
        WhetherCrossOver=CloseRand(0,1,1,1);
        if WhetherCrossOver<CrossOverRat
            CrossOverMan=fix(CloseRand(1,PopSize,1,1));
            CrossOverWoman=fix(CloseRand(1,PopSize,1,1));
            CrossBegin=fix(CloseRand(1,m,1,1));
           [Genies(CrossOverMan,:),Genies(CrossOverWoman,:)]= CrossOver(Genies(CrossOverMan,:),Genies(CrossOverWoman,:),CrossBegin);
        end
          %ģ�����
    MutationChoose=CloseRand(0,1,1,1);
    if MutationChoose<=MutationRat
        MutationCount=fix(CloseRand(1,m,1,1));
        Genies(i,:)=Mutation(Genies(i,:),MutationCount);
    end
        end
        
%2�������ƽ���
BinX1=Genies(:,1:m1);
BinX2=Genies(:,m1+1:m);
DecX1=[];
DecX2=[];
for i=1:PopSize;
DecX1(i,:)=GADecode(BinX1(i,:),-3.0,12.1);
DecX2(i,:)=GADecode(BinX2(i,:),4.1,5.8);
end
%3�������������
Val=GAAim(DecX1,DecX2);
[MaxVal,MaxIndex]=max(Val);
%fprintf(1,'ID=%d,x1=%s,x2=%s,fun=%e��\n',Generation,BinX1(MaxIndex,:),BinX2(MaxIndex,:),MaxVal);
%fprintf(1,'ID=%d,fun=%e��\n',Generation,MaxVal)
fprintf(1,'ID=%d,fun=%e\tx1=%e\tx2=%e.\n',Generation,MaxVal,DecX1(MaxIndex),DecX2(MaxIndex));
plot(Generation,max(Val)); 
%4�����̶�ѡ��
%4.1������total fitness
TF=sum(Val);
%4.2����������������̶Ŀ�����
p=Val/TF;
%4.4�����������%4.5�����̶�ѡ��
NewGenies='';
for i=1:PopSize;
  %4.3�������ۼ����̶Ŀ�����
    q=cumsum(p);
    Choose=CloseRand(0,1,1,1);
   index=find(q>=Choose);
    NewGenies(i,:)=Genies(index(1),:);
end
Genies=NewGenies;
end
%fclose(fid);





