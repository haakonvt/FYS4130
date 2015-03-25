clc

% This scripts need the x_i of p=1/2 , 1/10 and 1/100

N = length(x1);
x1sum  = zeros(N,1);
x10sum = zeros(N,1);
x50sum = zeros(N,1);

x1sum(1)  = 1;
x10sum(1) = 1;
x50sum(1) = 1;
for t = 2:N
    x1sum(t)  = x1sum(t-1)  + x1(t);
    x10sum(t) = x10sum(t-1) + x10(t);
    x50sum(t) = x50sum(t-1) + x50(t);
end

plot(0:999,x1sum)
hold all
plot(0:999,x10sum)
plot(0:999,x50sum)
legend('p=1%','p=10%','p=50%')
title('Random walks')
xlabel('Time, [t]')
ylabel('Position, [X]')
hold off
