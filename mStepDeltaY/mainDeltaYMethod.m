if (z == 0)
    indexedAdjArray = adjArray(r1,r2,r3,descartes(r1,r2,r3));
    originalAdjArray = indexedAdjArray;
    deltaYReductionMat = delta_yMat(indexedAdjArray);
    fullReductionArray = deltaYReductionMat;
else
    storeIndexedAdjArray;
    originalAdjArray = indexedAdjArray;
    
    for t = z:-1:1
        words = npermutek([1 2 3],t);
        sizeOfIndexedAdjArray = 3^t;
        
        deltaYReduction;
        updateIndexedAdjArray;
    end
    fullReductionArray = delta_yMat(indexedAdjArray(:,:,1));
end