clc
clear all
close all
%% Initialisation
a=0;
b=0;
c=0;
k = 0;
i = 100;
transform_mean = zeros(1,9);
transform_var = zeros(1,9);

while(i <= 10000)
    
% Uniform Distribution
N = i;
uni_transform = rand(N,N);
X1 = sum(uni_transform)/N;
% X1 = tranform(uni_transform);
k = k+1;
transform_mean(k) = mean(X1);
transform_var(k) = var(X1);
figure(1)
a = a+1;
s(a) = subplot(3,1,a);
histogram(X1,'BinMethod','sqrt')
grid on;
xlabel('Random Variable Y','fontsize',12);
if a == 2
ylabel('Probability Density Function (f(y))','fontsize',12);
end
title(s(a),['Transform Y of Uniform Distribution for N = ' num2str(N)])

%% Normal Distribution
norm_transform = randn(N,N);
X2 = sum(norm_transform)/N;
% X2 = tranform(norm_transform);
figure(2)
b = b+1;
s(b) = subplot(3,1,b);
histogram(X2,'BinMethod','sqrt')
k = k+1;
transform_mean(k) = mean(X2);
transform_var(k) = var(X2);
grid on;
xlabel('Random Variable Y','fontsize',12);
if b == 2
ylabel('Probability Density Function (f(y))','fontsize',12);
end
title(s(b),['Transform Y of Normal Distribution for N = ' num2str(N)])

%% Exponenetial Distribution
expo_transform = exprnd(1,N,N);
X3 = sum(expo_transform)/N;
% X3 = tranform(expo_transform);
figure(3)
c = c+1;
s(c) = subplot(3,1,c);
histogram(X3,'BinMethod','sqrt')
k = k+1;
transform_mean(k) = mean(X3);
transform_var(k) = var(X3);
grid on;
xlabel('Random Variable Y','fontsize',12);
if c == 2
ylabel('Probability Density Function (f(y))','fontsize',12);
end
title(s(c),['Transform Y of Exponential Distribution for N = ' num2str(N)])

i = i*10;
end