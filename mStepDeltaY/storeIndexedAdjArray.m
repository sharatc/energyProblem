words = npermutek([1 2 3],z);
sizeOfIndexedAdjArray = 3^z;
indexedAdjArray = zeros(6,6,sizeOfIndexedAdjArray);

for j = 1:sizeOfIndexedAdjArray
    wordchoice = words(j,:);
    [r1New, r2New, r3New, r4New] = wordToR(wordchoice,r1,r2,r3);
    adjArrayTemp = adjArray(r1New, r2New, r3New, r4New);
    indexedAdjArray(:,:,j) = adjArrayTemp;
end