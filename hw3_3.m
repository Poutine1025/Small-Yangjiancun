%�������A������b
A=[linspace(1,1,28)',data];
b=price;
[m,n]=size(A);
%QR�ֽ�
[X,d]=QRhouse(A);
Q=eye(m);
for i=1:n
    v=[1;X(i+1:m,i)];
    Hhat=eye(m+1-i)-d(i)*v*v';
    H=blkdiag(eye(i-1),Hhat);
    Q=Q*H;
end
%�����С��������
Q1=Q(1:m,1:n);
Q2=Q(1:m,n+1:m);
c1=Q1'*b;
R1=Q'*A;
R=R1(1:n,1:n);
%����ϵ���ͽ��
coef=UpperTri(R,n,c1);
result=norm(Q2'*b);