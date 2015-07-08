function [adjArray] = adjArray(r1, r2, r3, r4)
%builds the adjacency matrix for 3 circles touching
adjArray = zeros(6,6);
for i = 1:6
    for j = 1:6
        adjArray(i,j) = findDist(i,j,r1,r2,r3,r4);
    end
end

end