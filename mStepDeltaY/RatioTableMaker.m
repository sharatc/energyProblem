[SortedNewSides,I] = sort(newSideLength,'descend');
SortedOriginalSides = originalSideLength(I);

RatioTable = zeros(3,3);
RatioTable(1,:) = SortedOriginalSides;
RatioTable(2,:) = SortedNewSides;
RatioTable(3,:) = RatioTable(1,:)./RatioTable(2,:);