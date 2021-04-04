clc;
clear;

f = @(t,y) (t-y)/2; %y'
a = 0;              
b = 5;
h = 0.5;            %panjang partisi
y = 1;              %y(a)

n = (b-a)/h;
t = a;

for i = 1:n
    ttengah = t + h/2;
    tbaru = t + h;
    K1 = h*f(t,y);
    K2 = h*f(ttengah, y + K1/2);
    K3 = h*f(ttengah, y + K2/2);
    K4 = h*f(tbaru, y + K3);
    y = y + (1/6)*(K1 + 2*K2 + 2*K3 + K4);
    t = tbaru;
end

y