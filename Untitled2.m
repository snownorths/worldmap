clear,clc;
A=[3,11,3,10;1,9,2,8;7,4,10,5];
b=[7,4,9];
c=[3,6,5,6];
x=zeros(3,4);
y=1./x;
k=0
while isequal(A,y)==0
    k=k+1;
    [s,i,j]=min1(A);
    if(b(i)>c(j))
        x(i,j)=c(j);b(i)=b(i)-c(j);
        m(k)=s*x(i,j);
        A(:,j)=inf;
    else if(b(i)<c(j))
            x(i,j)=b(i);c(j)=c(j)-b(i);
            m(k)=s*x(i,j);
            A(i,:)=inf;
        else
            x(i,j)=b(i);
            m(k)=s*x(i,j);
            A(:,j)=inf;A(i,:)=inf;
        end
    end
end
M=sum(m);