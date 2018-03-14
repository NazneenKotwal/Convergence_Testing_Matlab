%% Random Process Project
clc
clear all
close all
%% Simulation of Random Variates using Matlab Routines and Rejection Method:
i = 100;
j = 0;
k = 0;
matlab_mean  = zeros(1,9);
reject_mean  = zeros(1,9);
matlab_var   = zeros(1,9);
reject_var   = zeros(1,9);

while(i <= 10000)
N = i;
% Returns an array of uniformly distributed random numbers in the interval (0,1).
U1 = rand(1,N);
j = j+1;
figure(j)
s(1)=subplot(1,2,1);
histogram(U1)
xlabel(s(1),'Random Variable X ','fontsize',12);
ylabel(s(1),'Probability Density Function (f(x))','fontsize',12);
title(s(1),{'Matlab Routine';['Uniform Distribution N = ' num2str(N)]})
s(2)=subplot(1,2,2);
X = unirej(N);
X = X.';
histogram(X)
grid on;
xlabel(s(2),'Random Variable X','fontsize',12);
ylabel(s(2),'Probability Density Function (f(x))','fontsize',12);
title(s(2),{'Rejection Method';['Uniform Distribution N =' num2str(N)]})

k = k+1;
matlab_mean(k) = mean(U1);
reject_mean(k) = mean(X);
matlab_var(k) = var(U1);
reject_var(k) = var(X);

%% Returns an array of random scalars drawn from the standard normal distribution
U2 = randn(1,N);
j = j+1;
figure(j)
s(1)=subplot(1,2,1);
histogram(U2)
xlabel(s(1),'Random Variable X','fontsize',12);
ylabel(s(1),'Probability Density Function (f(x))','fontsize',12);
title(s(1),{'Matlab Routine';['Normal Distribution N =' num2str(N)]})
X = normrej(N);
s(2)=subplot(1,2,2);
histogram(X)
grid on;
xlabel(s(2),'Random Variable X','fontsize',12);
ylabel(s(2),'Probability Density Function (f(x))','fontsize',12);
title(s(2),{'Rejection Method';['Normal Distribution N =' num2str(N)]})


k = k+1;
matlab_mean(k) = mean(U2);
reject_mean(k) = mean(X);
matlab_var(k) = var(U2);
reject_var(k) = var(X);


%% Generates random numbers from the exponential distribution with mean parameter mu = 1.
U3 = exprnd(1,1,N);
j = j+1;
figure(j)
s(1)=subplot(1,2,1);
histogram(U3,'BinMethod','fd')
xlabel(s(1),'Random Variable X','fontsize',12);
ylabel(s(1),'Probability Density Function (f(x))','fontsize',12);
title(s(1),{'Matlab Routine';['Exponential Distribution N =' num2str(N)]})
X = exprej(N);
s(2)=subplot(1,2,2);
histogram(X,'BinMethod','fd')
grid on;
xlabel(s(2),'Random Variable X','fontsize',12);
ylabel(s(2),'Probability Density Function (f(x))','fontsize',12);
title(s(2),{'Rejection Method';['Exponential Distribution N =' num2str(N)]})


k = k+1;
matlab_mean(k) = mean(U3);
reject_mean(k) = mean(X);
matlab_var(k) = var(U3);
reject_var(k) = var(X);

i = i*10;
end