t = linspace(0,1/50,40);
x = 100 + 100*sin(2*pi*50*t);
plot(t,x,'.');
x2 = floor(x/2);
writematrix(x2, 'data.txt');