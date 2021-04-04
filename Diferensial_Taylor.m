clc;
clear;

N = 2;

f{1} = @(t,y) (t-y)/2;
f{2} = @(t,y) (1/2) - f{1}(t,y)/2;