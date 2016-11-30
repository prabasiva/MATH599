function mywvdgauss()

%Program used to Wigner Ville Distribution for Gaussian function
% Praba Siva
% praba@umich.edu
% @prabasiva
% Filename: mywvdgauss.m

close all;
clear all;
t=-128:127;
sigma=.1;
coef=nthroot(pi*sigma*sigma,-4);
expo=(t.*t)/2*sigma*sigma;
g=coef*exp(-expo);
subplot(2,1,1);
plot(t,g);
[wd,freq]=wig2(g);
subplot(2,1,2)
contour(t,freq,wd',8)
