function [A] = funcMain(m, r1,r2,r3)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
% m = 2;
% r1 = 1;
% r2 = rand;
% while (r2 > 0.0001 || r2 == 0)
%     r2 = rand;
% end
% r3 = rand;
% while (r3 > r2 || r3 == 0)
%     r3 = rand;
% end

if (m == 2)
   A = adjArray(r1, r2, r3, descartes(r1,r2,r3));
else
    AReg = sirpenAdj(m);
    [numRows,numCols] = size(AReg);
    A = zeros(numRows,numCols);
    [row,col] = find(AReg);
    for i=1:numel(row)
        [word,v1Shift,v2Shift] = vertToWord(row(i),col(i),m);
        [r1New, r2New, r3New, r4New] = wordToR(word, r1, r2, r3);
        A(row(i),col(i)) = findDist(v1Shift, v2Shift, r1New, r2New, r3New, r4New);
    end
end
end

