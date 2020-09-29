
clear all
format long
n = 4;
%n = 8;
%n = 12;
%n = 16;

xd = linspace(-1,1,1000);
%%fff = exp(-(xd-0.5).^2);
fff = 1 ./ (16.*xd.^2+1);

x1 = -1+2*(0:n) / n;
%%%f1 = exp(-(x1-0.5).^2);
f1 = 1 ./ (16.*x1.^2+1);
[coef1,~] = divdif(x1,f1);
y1 = evalnewt(xd,x1,coef1);

k = (0:n);
x2 = cos(k*pi/n);
%%%f2 = exp(-(x2-0.5).^2);
f2 = 1 ./ (16.*x2.^2+1);
[coef2,~] = divdif(x2,f2);
y2 = evalnewt(xd,x2,coef2);

k2 = (1:n+1);
x3 = cos( (2*k2-1)*pi/(2*n+2));
%%%f3 = exp(-(x3-0.5).^2);
f3 = 1 ./ (16.*x3.^2+1);
[coef3,~] = divdif(x3,f3);
y3 = (evalnewt(xd,x3,coef3));

% %%%%%%%%%%% Plot differences
dif1 = abs(fff-y1);
dif2 = abs(fff-y2);
dif3 = abs(fff-y3);

figure;
hh = plot(xd,dif1,xd,dif2,xd,dif3);
set(hh,'linewidth',1.3);
set(gca,'fontsize',10);
xlabel('Value of x');
ylabel('abs difference');
title('The differences between polynomials of degree 4 approximation and f')   %% change degree to 4 8 12 16
legend('equally spaced points error',' extreme points of Chebyshev polynomial error','zeros of Chebyshev polynomial error','loaction','southwest','fontsize',10);


%%%%%%%%% Table of differences
X = ['                 Equally spaced      extreme        zeros'];
disp(X)

max1 = max(dif1);
max2 = max(dif2);
max3 = max(dif3);
fprintf('Degree 4 error\t %.10f     %.10f  %.10f\n',max1,max2,max3)

figure
plot(xd,fff,xd,y1,xd,y2,xd,y3)










