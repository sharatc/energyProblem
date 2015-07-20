function [s4] = H_descartes(s)
%Given 3 hyperbolic radii in array s, output the 4rth descartes circle
%radius in hyperbolic space

tempvar = zeros(3,1);

for i=1:3
    tempvar(i) = coth(2*s(i));
end

s4 = 1/2 * acoth(2*sqrt(tempvar(1)*tempvar(2) + tempvar(1)*tempvar(3) + tempvar(2)*tempvar(3) + 1) + tempvar(1) + tempvar(2) + tempvar(3));
end

