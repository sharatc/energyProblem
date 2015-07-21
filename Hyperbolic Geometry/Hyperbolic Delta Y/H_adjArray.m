function [adjArray] = H_adjArray(s)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
adjArray = zeros(6,6);
for i = 1:6
    for j = 1:6
        adjArray(i,j) = H_findDist(i,j,s);
    end
end

adjArray = adjArray + adjArray.';

end

