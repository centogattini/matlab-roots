function z = interval(func, a, b)

iter = 50;
eps = 0.001;
m = 50;
X = linspace(a,b,m);
Y = func(X);
hold on;
plot(X,Y);

Z = ginput(2);
z1 = Z(1, 1);
z2 = Z(2, 1);
f1 = func(z1);
%f2 = func(z2);

for i = 0:iter
    z = (z1+z2)/2;
    y = func(z);
    %P = plot(z1,0,'*',z2,0,'*',z,0,'0');
    if y*f1 < 0
        z2 = z;
    else
        z1 = z;
    end
    if abs(func(z)) < eps
        break;
    end
    %delete(P)
end
hold off;
z
end