function [originalSides] = originalSides6x6(adjacencyArray)
%Takes in the 6x6 original adjacency array and outputs a 1x3 list of total
%side lengths

originalSides = zeros(1,3);
originalSides(1) = adjacencyArray(1,2) + adjacencyArray(2,4);
originalSides(2) = adjacencyArray(1,3) + adjacencyArray(3,6);
originalSides(3) = adjacencyArray(4,5) + adjacencyArray(5,6);

end

