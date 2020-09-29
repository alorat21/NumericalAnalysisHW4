
Y = load('noisy_signal.txt');

figure(1)
plot(Y(:,1),Y(:,2))

figure(2)
X = fft(Y(:,2));
ck = abs((X(1:501)));
k = 0:500;
loglog(k,ck,'o');
xlabel('k');
ylabel('|ck|');
title('Plot of |ck| vs k');
legend('Points of ck');

figure(3)
X2 = X;
X2(11:end-10) = 0;
fs = ifft(X2);
t = Y(:,1);
plot(Y(:,1),fs);
xlabel('t');
ylabel('fs');
legend('The smooth version of fs vs t');

    

