function [dist] = H_findDist(i,j,s)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
s_temp = s;
dist = 0;

switch(i)
    case 1
        switch(j)
            case 2
                s_temp(3) = H_descartes(s);
                a_temp = H_angles(s_temp);
                lengths = H_sideLengths(s_temp, a_temp);
                dist = lengths(1);
            case 3
                s_temp(3) = H_descartes(s);
                a_temp = H_angles(s_temp);
                lengths = H_sideLengths(s_temp, a_temp);
                dist = lengths(2);
        end
    case 2
        switch(j)
            case 3
                s_temp(3) = H_descartes(s);
                a_temp = H_angles(s_temp);
                lengths = H_sideLengths(s_temp, a_temp);
                dist = lengths(3);
            case 4
                s_temp(2) = H_descartes(s);
                a_temp = H_angles(s_temp);
                lengths = H_sideLengths(s_temp, a_temp);
                dist = lengths(1);
            case 5
                s_temp(2) = H_descartes(s);
                a_temp = H_angles(s_temp);
                lengths = H_sideLengths(s_temp, a_temp);
                dist = lengths(2);
        end
    case 3
        switch(j)
            case 5
                s_temp(1) = H_descartes(s);
                a_temp = H_angles(s_temp);
                lengths = H_sideLengths(s_temp, a_temp);
                dist = lengths(1);
            case 6
                s_temp(1) = H_descartes(s);
                a_temp = H_angles(s_temp);
                lengths = H_sideLengths(s_temp, a_temp);
                dist = lengths(2);
        end
    case 4
        switch(j)
            case 5
                s_temp(2) = H_descartes(s);
                a_temp = H_angles(s_temp);
                lengths = H_sideLengths(s_temp, a_temp);
                dist = lengths(3);
        end
    case 5
        switch(j)
            case 6
                s_temp(1) = H_descartes(s);
                a_temp = H_angles(s_temp);
                lengths = H_sideLengths(s_temp, a_temp);
                dist = lengths(3);
        end
    otherwise
        dist = 0;
end

end

