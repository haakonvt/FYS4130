clc
%clear all

N    = 1000; 
ens  = 10^5;
p    = 0.5;
x    = ones(ens,1);
%x(1) = 1.0;

x2avg    = zeros(N,1);
xavg2    = zeros(N,1);
var = zeros(N,1);
x2avg(1) = 1;
xavg2(1) = 1;
var(1)   = 0;

xsum = ones(ens,1);

for t=2:N
    for n=1:ens
        if rand <= p
            x(n) = -x(n);
        else
            x(n) = x(n);
        end
        xsum(n) = xsum(n) + x(n);
    end
    
    x2avg(t) = sum(xsum.^2)/ens;
    xavg2(t) = (sum(xsum)/ens)^2;
    
    var(t) = x2avg(t) - xavg2(t);
end

plot(0:N-1,var)
figure
loglog(0:N-1,var)