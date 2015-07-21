function [originalAdjArray, fullReductionArray] = H_deltaY(z,s)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

if (z == 0)
    indexedAdjArray = H_adjArray(s);
    originalAdjArray = indexedAdjArray;
    deltaYReductionMat = delta_yMat(indexedAdjArray);
    fullReductionArray = deltaYReductionMat;
else
    words = npermutek([1 2 3],z);
    sizeOfIndexedAdjArray = 3^z;
    indexedAdjArray = zeros(6,6,sizeOfIndexedAdjArray);
    deltaYReductionMat = zeros(3,3,sizeOfIndexedAdjArray);
    
    for j = 1:sizeOfIndexedAdjArray
        wordchoice = words(j,:);
        sNew = H_wordToR(wordchoice,s);
        adjArrayTemp = H_adjArray(sNew);
        indexedAdjArray(:,:,j) = adjArrayTemp;
    end
    originalAdjArray = indexedAdjArray;
    
    for t = z:-1:1
        tempSize = 3^t;

        for k = 1:tempSize
            adjArrayTemp = indexedAdjArray(:,:,k);
            deltaYReductionMat(:,:,k) = delta_yMat(adjArrayTemp);
        end
        
        for l = 1:tempSize/3
            startPos = 3*l - 2;
            indexedAdjArray(:,:,l) = mush(deltaYReductionMat,startPos, startPos + 1, startPos + 2);
        end
    end
    fullReductionArray = delta_yMat(indexedAdjArray(:,:,1));
end
end

