if (z == 0)
    originalSideLength = sides6x6(originalAdjArray);    
else
    originalSideCounter;
    originalSideLength = zeros(1,3);
    
    originalSideTriangleHolder1 = originalAdjArray(:,:,indexWordContainsNo3);
    originalSideTriangleHolder2 = originalAdjArray(:,:,indexWordContainsNo2);
    originalSideTriangleHolder3 = originalAdjArray(:,:,indexWordContainsNo1);
    
    for h = 1:2^z
        sl1 = sides6x6(originalSideTriangleHolder1(:,:,h));
        sl2 = sides6x6(originalSideTriangleHolder2(:,:,h));
        sl3 = sides6x6(originalSideTriangleHolder3(:,:,h));
        
        originalSideLength(1) = originalSideLength(1) + sl1(1);
        originalSideLength(2) = originalSideLength(2) + sl2(2);
        originalSideLength(3) = originalSideLength(3) + sl3(3);
    end
end