function[A]=sirpen(n,A)
x=0;
y=1.5*(3^(n-2)+1);

for k=1:n-2
    x1=1.5*(3^(k-1)+1);
    x=x1+x;
end

x=x+4-n;
z=2*y+x-3;
A=blkdiag(A,A(2:y-1,2:y-1),A(2:y,2:y));

A(x,y+1)=1;
A(y+1,x)=1;
A(x,y+2)=1;
A(y+2,x)=1;
A(y,2*y)=1;
A(2*y,y)=1;
A(y,2*y-1)=1;
A(2*y-1,y)=1;
A(z,2*y-2)=1;
A(2*y-2,z)=1;
A(z,2*y-4)=1;
A(2*y-4,z)=1;
