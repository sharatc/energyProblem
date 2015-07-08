for l = 1:sizeOfIndexedAdjArray/3
    startPos = 3*l - 2;
    indexedAdjArray(:,:,l) = mush(deltaYReductionMat,startPos, startPos + 1, startPos + 2);
end