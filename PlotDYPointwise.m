%Recall that the physical level is z+2
%Value of r2 determines which leaf we start on, smaller r2 -> closer to
%boundary
%Difference between r2 and r3 determines position on leaf. Large difference
%close to bottom, small difference close to top
    maxZ = 5;
    r1 = 1;
    r2 = .5;
    r3 = .1;
    PlotData = zeros(maxZ,3);
    l_primes = zeros(maxZ+1,2);

for z = 0:maxZ
    RatioTable = DeltaY(z,r1,r2,r3);
    PlotData(z+1,1) = RatioTable(3,1);
    PlotData(z+1,2) = RatioTable(3,2);
    PlotData(z+1,3) = RatioTable(3,3);
    
    l_primes(z+1,1) = RatioTable(2,2)./RatioTable(2,1);
    l_primes(z+1,2) = RatioTable(2,3)./RatioTable(2,1);
end
    l_primes(maxZ+2,1) = RatioTable(1,2)./RatioTable(1,1);
    l_primes(maxZ+2,2) = RatioTable(1,3)./RatioTable(1,1);
hold on;
     plot(PlotData(:,1),'b-o');
%     plot(PlotData(:,3),'r-o');

%       plot(l_primes(:,1),'b-o');
%       plot(l_primes(:,2),'r-o');
% 
%     limits = [0 1 0 1];
%     axis(limits);
%     t = linspace(0,pi-0.01);
%     x = t./(2*tan(t/2));
%     y = ((pi-t)/2).*tan(t/2);
%     plot(x,y,'k');
%     xy = 0:0.01:1;
%     plot(xy,xy,'k');
%     scatter(l_primes(:,1),l_primes(:,2))
hold off