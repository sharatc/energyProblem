function [FinalOut] = genDelta_y(depth,r1,r2)
%finds the delta y to level 1 for an arbitrary gasket of given depth
wordLength=depth;
r3 = descartes(r1, r2, -1);

wordList = npermutek([1 2 3],wordLength);
wordIndexedGraph = zeros(6,6,3^wordLength);
wordIndexedMush = zeros(6,6,3^wordLength);
wordIndexedDeltaY = zeros(3,3,3^wordLength);

for i = 1:3^wordLength;
    [r1New,r2New,r3New,r4New] = wordToR(wordList(i,:),r1,r2,r3);
    A = adjArray(r1New, r2New, r3New, r4New); 
    wordIndexedGraph(:,:,i) = A;
end

for i = 1:3^wordLength;
    wordIndexedDeltaY(:,:,i) = delta_yMat(wordIndexedGraph(:,:,i));
end

for i = 1:wordLength
    for k = 1:3^(wordLength-i)
    wordIndexedMush(:,:,k) = mush(wordIndexedDeltaY, 3*k-2, 3+k-1, 3*k);
    end
    
    for j = 1:3^(wordLength-i);
    wordIndexedDeltaY(:,:,j) = delta_yMat(wordIndexedMush(:,:,j));
    end
end
FinalOut = wordIndexedDeltaY(:,:,1);
end

