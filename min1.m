function [s,i,j]=min1(A)
    [M,I]=min(A);
    [s,j]=min(M,[],2);
    i=I(j);
end