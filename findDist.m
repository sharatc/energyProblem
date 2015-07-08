function [dist] = findDist(v1, v2, r1, r2, r3, r4)
%Spits out distance given two nodes

switch(v1)
    case 1
        switch(v2)
            case 2
                dist = r1*(acos(((r1+r2)^2 + (r1+r4)^2 - (r2+r4)^2)/(2*(r1+r2)*(r1+r4))));
            case 3
                dist = r2*(acos(((r1+r2)^2 + (r2+r4)^2 - (r1+r4)^2)/(2*(r1+r2)*(r2+r4))));
            otherwise
                dist = 0;
        end
    case 6
        switch(v2)
            case 5
                dist = r3*(acos(((r3+r4)^2 + (r3+r2)^2 - (r2+r4)^2)/(2*(r3+r4)*(r2+r3))));
            case 3
                dist = r2*(acos(((r2+r4)^2 + (r2+r3)^2 - (r3+r4)^2)/(2*(r2+r4)*(r2+r3))));
            otherwise
                dist = 0;
        end
    case 4
        switch(v2)
            case 5
                dist = r3*(acos(((r3+r4)^2 + (r3+r1)^2 - (r1+r4)^2)/(2*(r3+r4)*(r1+r3))));
            case 2
                dist = r1*(acos(((r1+r4)^2 + (r1+r3)^2 - (r3+r4)^2)/(2*(r1+r4)*(r1+r3))));
            otherwise
                dist = 0;
        end
    case 5
        switch(v2)
            case 6
                dist = r3*(acos(((r3+r4)^2 + (r3+r2)^2 - (r2+r4)^2)/(2*(r3+r4)*(r2+r3))));
            case 4
                dist = r3*(acos(((r3+r4)^2 + (r3+r1)^2 - (r1+r4)^2)/(2*(r3+r4)*(r1+r3))));
            case 2
                dist = r4*(acos(((r1+r4)^2 + (r3+r4)^2 - (r1+r3)^2)/(2*(r1+r4)*(r4+r3))));
            case 3
                dist = r4*(acos(((r3+r4)^2 + (r2+r4)^2 - (r2+r3)^2)/(2*(r3+r4)*(r2+r4))));
            otherwise
                dist = 0;
        end
    case 2
        switch(v2)
            case 1
                dist = r1*(acos(((r1+r2)^2 + (r1+r4)^2 - (r2+r4)^2)/(2*(r1+r2)*(r1+r4))));
            case 4
                dist = r1*(acos(((r1+r4)^2 + (r1+r3)^2 - (r3+r4)^2)/(2*(r1+r4)*(r1+r3))));
            case 5
                dist = r4*(acos(((r1+r4)^2 + (r3+r4)^2 - (r1+r3)^2)/(2*(r1+r4)*(r4+r3))));
            case 3
                dist = r4*(acos(((r1+r4)^2 + (r2+r4)^2 - (r1+r2)^2)/(2*(r1+r4)*(r4+r2))));
            otherwise
                dist = 0;
        end
    case 3
        switch(v2)
            case 1
                dist = r2*(acos(((r1+r2)^2 + (r2+r4)^2 - (r1+r4)^2)/(2*(r1+r2)*(r2+r4))));
            case 6
                dist = r2*(acos(((r2+r4)^2 + (r2+r3)^2 - (r3+r4)^2)/(2*(r2+r4)*(r2+r3))));
            case 5
                dist = r4*(acos(((r3+r4)^2 + (r2+r4)^2 - (r2+r3)^2)/(2*(r3+r4)*(r2+r4))));
            case 2
                dist = r4*(acos(((r1+r4)^2 + (r2+r4)^2 - (r1+r2)^2)/(2*(r1+r4)*(r4+r2))));
            otherwise
                dist = 0;
        end
    otherwise
        assert(false);
end
end