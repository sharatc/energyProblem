%Recall that the physical level is z+2
%Value of r2 determines which leaf we start on, smaller r2 -> closer to
%boundary
%Difference between r2 and r3 determines position on leaf. Large difference
%close to bottom, small difference close to top
    maxZ = 5;
    r1 = 1;
    r2 = 1;
    r3 = 1;
    DepthTable = zeros(maxZ+1,3,3);
    
    RatioTable = DeltaY(0,r1,r2,r3);
    DepthTable(1,:,1) = RatioTable(1,:);
    DepthTable(1,:,2) = [1 1 1];
    
for z = 0:maxZ
    RatioTable = DeltaY(z,r1,r2,r3);
    DepthTable(z+2,:,1) = RatioTable(2,:);
    DepthTable(z+2,:,2) = RatioTable(3,:);
    DepthTable(z+2,:,3) = DepthTable(z+2,:,2)-DepthTable(z+1,:,2);
end