function [s] = H_wordToR(word,s)
%takes a word and produces the radii in that triangle

for i = 1:numel(word)
    
    m = H_descartes(s);
    
    switch(word(i))
        case 1
            s(3) = m;
        case 2
            s(2) = m;
        case 3
            s(1) = m;
    end
end
end

