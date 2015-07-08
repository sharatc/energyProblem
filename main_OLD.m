m = 2;
r1 = 1;
r2 = 1;
r3 = 1;
% r1 = rand;
% r2 = rand;
% while (r2 > 1-r1)
%     r2 = rand;
% end

%r3 = descartes(r1, r2, -1);

if (m == 2)
   A = adjArray(r1, r2, r3, descartes(r1, r2, r3));
else
    AReg = sirpenAdj(m);
    [numRows,numCols] = size(AReg);
    A = zeros(numRows,numCols);
    [row,col] = find(AReg);
    for i=1:numel(row)
        [word,v1Shift,v2Shift] = vertToWord(row(i),col(i),m);
        [r1New, r2New, r3New, r4] = wordToR(word, r1, r2, r3);
        A(row(i),col(i)) = findDist(v1Shift, v2Shift, r1New, r2New, r3New, r4);
    end
end