k = 1000;
l_primes = zeros(k,2);
DataTable = zeros(3,3,k);

z = 4;

oldNewSwitch = 2; %1 is old, 2 is new
for i = 1:k
    PickRadii;
    DataTable(:,:,i) = DeltaY(z,r1,r2,r3);
    l_primes(i,1) = DataTable(oldNewSwitch,2,i)./DataTable(oldNewSwitch,1,i);
    l_primes(i,2) = DataTable(oldNewSwitch,3,i)./DataTable(oldNewSwitch,1,i);
end

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
scatter(l_primes(:,1),l_primes(:,2),1,'filled');
hold off