words = npermutek([1,2,3],z);
wordContains1 = words == 1;
wordContains2 = words == 2;
wordContains3 = words == 3;

indexWordContains1 = find(~sum(wordContains1,2));
indexWordContains2 = find(~sum(wordContains2,2));
indexWordContains3 = find(~sum(wordContains3,2));