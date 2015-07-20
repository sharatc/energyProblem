function [a] = H_angles(s)
%Given 3 hyperbolic radii in array s, create angles of the interior
%triangle in array a using hyperbolic law of cosines

a(1) = acos((cosh(s(1)+s(2))*cosh(s(1)+s(3)) - cosh(s(2)+s(3)))/(sinh(s(1)+s(2))*sinh(s(1)+s(3))));
a(2) = acos((cosh(s(2)+s(3))*cosh(s(2)+s(1)) - cosh(s(3)+s(1)))/(sinh(s(2)+s(3))*sinh(s(2)+s(1))));
a(3) = acos((cosh(s(3)+s(1))*cosh(s(3)+s(2)) - cosh(s(1)+s(2)))/(sinh(s(3)+s(1))*sinh(s(3)+s(2))));
end

