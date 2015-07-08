deltaYReductionMat = zeros(3,3,sizeOfIndexedAdjArray);

for k = 1:sizeOfIndexedAdjArray
    adjArrayTemp = indexedAdjArray(:,:,k);
    deltaYReductionMat(:,:,k) = delta_yMat(adjArrayTemp);
end