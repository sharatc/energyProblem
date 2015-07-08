function [vert] = wordTo6x6(word)
%takes a word to the 6 by 6 triangle adjacency array it corresponds to
vert = [1 2 3 4 5 6];
m = numel(word);

% if (word(m) == 2)
%     vert(1) = -1;
% elseif (word(m) == 3)
%     vert(1) = -3;
% end

for i = 1:m
    y = (3^(i+1)+3)/2;
    yback = (3^i+3)/2;
    if (word(m-i+1) == 2)
        vert(1) = yback + 1;
    elseif (word(m-i+1) == 3)
        for j = 1:6
            vert(j) = vert(j)+2*y-3;
        end
    end
    
end

end

