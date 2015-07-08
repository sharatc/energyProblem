function[Ratio] = delta_y(B)
%DELTA_Y Input a 6x6 matrix
%   The output is a 3x3 matrix (the resistance values on the m-1st level

a = B(1,2);
b = B(2,3);
c = B(1,3);
d = B(2,4);
e = B(4,5);
f = B(2,5);
g = B(3,5);
h = B(5,6);
j = B(3,6);

A = a+b+c;
D = d+e+f;
G = g+h+j;

J = (a.*b+b.*c)./A + (d.*f+e.*f)./D + (g.*h+g.*j)./G;

X = (a.*c)./A + ((a.*b./A + d.*f./D).*(b.*c./A + g.*j./G))./J;
Y = (d.*e)./D + ((a.*b./A + d.*f./D).*(e.*f./D + g.*h./G))./J;
Z = (h.*j)./G + ((b.*c./A + g.*j./G).*(e.*f./D + g.*h./G))./J;

s = X.*Y+Y.*Z+X.*Z;
s12 = s./Z;
s13 = s./Y;
s23 = s./X;

Q = [s12 s13 s23];
[QSorted,I] = sort(Q,'descend');
OldTri = [a+d c+j e+h];
OldTriSorted = OldTri(I);
newRatio = OldTriSorted./QSorted;
Ratio = [QSorted(1),OldTriSorted(1),newRatio(1); QSorted(2),OldTriSorted(2),newRatio(2); QSorted(3),OldTriSorted(3),newRatio(3)];
%RatioQuotient = Q./OldTri; 
%Ratio = [Q(2),OldTri(2),RatioQuotient(2); Q(3),OldTri(3),RatioQuotient(3); Q(6),OldTri(6),RatioQuotient(6)];
end