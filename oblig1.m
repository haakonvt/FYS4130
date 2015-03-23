clc
%clear all

N    = 1000; 
ens  = 10^5;
p    = 0.01;
x    = zeros(N,1);
x(1) = 1.0;

x2avg = zeros(ens,1);
xN    = zeros(ens,1);

for n = 1:ens
    for i=1:N-1
        if rand < p
            x(i+1) = -x(i);
        else
            x(i+1) = x(i);
        end    
    end
    
    x2avg(n) = sum(x)^2/ens;
    xN(n) = sum(x);
    
end

% Write out ensemble average
sum(x2avg)

% Plot X_N=1000 in a histogram
hist(xN,150)