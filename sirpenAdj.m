function[A]=sirpenAdj(n)
x=0;
A=[0 1 1 0 0 0;
    1 0 1 1 1 0;
    1 1 0 0 1 1;
    0 1 0 0 1 0;
    0 1 1 1 0 1;
    0 0 1 0 1 0];
switch n
    case 1
        A=[0 1 1;
           1 0 1;
           1 1 0];
    case 2
        A;
    otherwise
        A=[0 1 1 0 0 0;
           1 0 1 1 1 0;
           1 1 0 0 1 1;
           0 1 0 0 1 0;
           0 1 1 1 0 1;
           0 0 1 0 1 0];
        for i=3:n
            A=sirpen(i,A);
        end
end