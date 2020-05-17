function x1 = newton(func, a, b)
hold off;
h = 0.001;
iter = 50;
eps = 0.001;
m = 50;
X = linspace(a,b,m);
Y = func(X);
hold on;
plot(X,Y);
y_min = min(Y);
y_max = max(Y);
z = ginput(1);
x1 = z(1);
x2 = 0;
for i = 1:iter
    yh = (func(x1+h) - func(x1))/h;
    x2 = x1 - func(x1)/yh;
    plot(X, func(x1) + yh*(X-x1));    
    set(line([x2,x2],[0,func(x2)]), 'LineStyle', ':');
    x1 = x2;
    if abs(func(x1)) < eps
        break;
    end
end
hold off;
x1
end