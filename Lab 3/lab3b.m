% LAB 3 B
% Chirantan Ganguly (420)
% Amitrakshar Sanyal (422)
% ================================
n=0:100;
f1=0.2;
f2=0.02;
x1=cos(f1*pi*n);
x2=cos(f2*pi*n);
y=x1.*x2;
new_f1=f1+f2;
new_f2=f1-f2;
norm_f_beat=abs(f1-f2);
fprintf('New Normalized Frequencies: %d and %d\n',new_f1,new_f2);
fprintf('Normalized Beat Frequency = %d\n',norm_f_beat);
figure(1);
subplot(3,1,1);
plot(n,x1);
grid;
xlabel('t');
ylabel('Amplitude');
legend('x_1(t)');
title('Carrier Frequency x_1(t)');
subplot(3,1,2);
plot(n,x2);
grid;
xlabel('t');
ylabel('Amplitude');
legend('x_2(t)');
title('Modulating Frequency x_2(t)');
subplot(3,1,3);
plot(n,y);
grid;
xlabel('t');
ylabel('Amplitude');
legend('y(t)');
title('y(t)=x_1(t)*x_2(t)');
