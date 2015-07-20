function [l] = H_sideLengths(s, a)
%Given 3 Hyperbolic Radii in the array s, and angles in the array a, find
%the side lengths of the interior triangle in array l with l(i) being the
%side opposite to a(i).

l = zeros(3,1);
for i = 1:3
    l(i) = a(i)*sinh(s(i));
end

end

