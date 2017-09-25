function X=Gauss(A,n)
%用不选主元的Gauss消去法计算A的LU分解
%A为系数矩阵，n为A的阶数，输出X为分解

for k=1:n-1
    A(k+1:n,k)=A(k+1:n,k)/A(k,k);
    A(k+1:n,k+1:n)=A(k+1:n,k+1:n)-A(k+1:n,k)*A(k,k+1:n);  
end
X=A;
end