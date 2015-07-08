r1 = 1;
r2 = rand;
while (r2 > 0.01 || r2 == 0);
    r2 = rand;
end
r3 = rand;
while (r3 > r2 || r3 == 0)
    r3 = rand;
end