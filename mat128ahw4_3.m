
ck = [0.0,0.0407 - 0.0015i, 0.1645 - 0.0167i, 0.4382 - 0.0993i, -0.4112 - 0.7080i, -0.1492 - 0.9888i, -0.4125 + 0.7072i, -0.4447 - 0.0641i, -0.0242 + 0.1635i];

xd = linspace(0,2*pi,1000);
fx = ComplexFourier(xd,ck);
figure
plot(xd,fx)