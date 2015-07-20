function [area] = H_area(s, a)
%Given hyperbolic radii in array s and angles in array a, calculate the
%area of the interior triangle

temp = 0;

for i = 1:3
    temp = temp + a(i)*(1-2*sinh(s(i)/2)^2);
end

area = pi - temp;
end

