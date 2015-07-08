function [A] = mush(V, s1,s2,s3)
%takes three 3 vertex graphs and spits out the 6 vertex contatination
A = zeros(6,6);

A(1,2) = V(1,2,s1);
A(1,3) = V(1,3,s1);
A(2,3) = V(2,3,s1);
A(2,1) = A(1,2);
A(3,1) = A(1,3);
A(3,2) = A(2,3);

A(2,4) = V(1,2,s2);
A(2,5) = V(1,3,s2);
A(3,5) = V(1,2,s3);
A(3,6) = V(1,3,s3);

A(4,2) = A(2,4);
A(5,2) = A(2,5);
A(5,3) = A(3,5);
A(6,3) = A(3,6);

A(4,5) = V(2,3,s2);
A(5,6) = V(2,3,s3);
A(5,4) = A(4,5);
A(6,5) = A(5,6);
end

