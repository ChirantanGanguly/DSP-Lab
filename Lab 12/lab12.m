%Lab12
Fs=2000;
Fpass=700;
Fstop=500;
Rp=1;
Rs=30;
wp=2*pi*Fpass/Fs;
ws=2*pi*Fstop/Fs;
wp
ws
Omega_p_hat=tan(wp/2);
Omega_s_hat=tan(ws/2);
Omega_p=1;
Omega_s=abs(-Omega_p*Omega_p_hat/Omega_s_hat);
[N,wn]=cheb2ord(Omega_p,Omega_s,Rp,Rs,'s');
[b,a]=cheby2(N,Rs,wn,'s');
[b1,a1]=lp2hp(b,a,2.41421);
[num,den]=bilinear(b1,a1,0.5);
N=512;
[H,W]=freqz(num,den,N);
figure(1)
plot(W/(2*pi),20*log10(abs(H)));
grid;
xlabel('w/2pi');
ylabel('Gain in dB');
title('IIR Digital Filter Design using Cheby Type2 Filter');
figure(2)
plot(W*Fs/(2*pi),20*log10(abs(H)),'r-');
grid;
xlabel('Frequency in Hz');
ylabel('Gain in dB');
title('IIR Digital Filter');
