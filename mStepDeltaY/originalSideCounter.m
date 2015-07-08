words = npermutek([1,2,3],z);
wordContains1 = words == 1;
wordContains2 = words == 2;
wordContains3 = words == 3;

indexWordContainsNo1 = find(~sum(wordContains1,2));
indexWordContainsNo2 = find(~sum(wordContains2,2));
indexWordContainsNo3 = find(~sum(wordContains3,2));