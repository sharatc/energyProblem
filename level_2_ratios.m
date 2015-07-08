k=100;
RatioTable = zeros(3,3,k);
primes = zeros(k,2);
u = 1;
for i = 1:k
    A = funcMain();
    RatioTable(:,:,i) = delta_y(A).';
    primes(i,1) = RatioTable(u,2,i)./RatioTable(u,1,i);
    primes(i,2) = RatioTable(u,3,i)./RatioTable(u,1,i);
end
sum = zeros(1,3);
for i = 1:k
    sum(1) = sum(1) + RatioTable(3,1,i);
end
sum(1) = sum(1)/k;

for i = 1:k
    sum(2) = sum(2) + RatioTable(3,2,i);
end
sum(2) = sum(2)/k;

for i = 1:k
    sum(3) = sum(3) + RatioTable(3,3,i);
end
sum(3) = sum(3)/k;

hold on;
limits = [0 1 0 1];
axis(limits);
t = linspace(0,pi-0.01);
x = t./(2*tan(t/2));
y = ((pi-t)/2).*tan(t/2);
plot(x,y,'k');
% t = linspace(0,pi-0.01);
% x = (t./(2*tan(t/2))).^1.53069;
% y = (((pi-t)/2).*tan(t/(2))).^1.51;
% plot(x,y,'k');
xy = 0:0.01:1;
plot(xy,xy,'k');
scatter(primes(:,1),primes(:,2),1,'filled');
hold off
