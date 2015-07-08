function [r1New, r2New, r3New, r4] = wordToR(word,r1, r2, r3)
%takes a word and produces the radii in that triangle

for i = 1:numel(word)
    
    m = descartes(r1,r2,r3);
    
    switch(word(i))
        case 1
            r3 = m;
        case 2
            r2 = m;
        case 3
            r1 = m;
    end
end
r1New = r1;
r2New = r2;
r3New = r3;
r4 = descartes(r1,r2,r3);
end

