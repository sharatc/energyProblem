function [ r4 ] = descartes(r1, r2, r3)
%Calculates Descartes formula for 4th radius

r4 = 1/(1/r1 + 1/r2 + 1/r3 + 2*sqrt(1/(r1*r2)+1/(r2*r3) + 1/(r1*r3)));

end