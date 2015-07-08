function [word, v1, v2] = vertToWord(v1, v2, n)
%Takes two vertices and outputs the word of the side
word = zeros(1,n-2);
assert(n > 2);
assert(~(v1 == v2));
for i = 1:n-2
  %  fprintf('%d, %d\n',v1,v2);
    y = (3^(n-i)+3)/2;
    if (1 <= v1 && v1 <= y && 1 <= v2 && v2 <= y)
        word(i) = 1;
    elseif (v1 >= y+1 && v2 >= y+1 && v1 <= 2*y-2 && v2 <= 2*y-2)
        word(i) = 2;
        v1 = v1-y+1;
        v2 = v2-y+1;
    elseif (v1 >= 2*y-1 && v2 >= 2*y-1 && v1 <= 3*y-3 && v2 <= 3*y-3)
        word(i) = 3;
        v1 = v1-2*y+3;
        v2 = v2-2*y+3;
    elseif (1 <= v1 && v1 <= y && v2 >= y+1 && v2 <= 2*y-2)
        word(i) = 2;
        v1 = 1;
        v2 = v2-y+1;
    elseif (1 <= v1 && v1 <= y && v2 >= 2*y-1 && v2 <= 3*y-3)
        word(i) = 3;
        v1 = 1;
        v2 = v2-2*y+3;
    elseif (v1 >= y+1 && v1 <= 2*y-2 && v2 >= 2*y-1 && v2 <= 3*y-3)
        word(i) = 2;
        v1 = v1-y+1;
        v2 = y;
    elseif (1 <= v2 && v2 <= y && v1 >= y+1 && v1 <= 2*y-2)
        word(i) = 2;
        v2 = 1;
        v1 = v1-y+1;
    elseif (1 <= v2 && v2 <= y && v1 >= 2*y-1 && v1 <= 3*y-3)
        word(i) = 3;
        v2 = 1;
        v1 = v1-2*y+3;
    elseif (v2 >= y+1 && v2 <= 2*y-2 && v1 >= 2*y-1 && v1 <= 3*y-3)
        word(i) = 2;
        v2 = v2-y+1;
        v1 = y;
    else
        assert(false);
    end
end
end

