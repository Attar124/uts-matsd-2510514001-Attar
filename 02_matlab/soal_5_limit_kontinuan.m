% personalisasi
syms x;
K = 2; a = 0; b = 1;

% Verifikasi Limit Aljabar
L1 = limit((x^2 - K^2)/(x - K), x, K);
L2 = limit((sqrt(x + (K+1)^2) - (K+1))/x, x, 0);
L3 = limit(((a+2)*x^3 + b*x + 7)/(x^3 - x + K), x, inf);

disp('verifikasi perhtingan');
disp(['Hasil L1: ', char(L1)]);
disp(['Hasil L2: ', char(L2)]);
disp(['Hasil L3: ', char(L3)]);

% Plot C(x) Piecewise (menggunakan nilai p=4, q=4 hasil perhitungan)
p = 4; q = 4;
C_func = piecewise(x < K, (x^2 - K^2)/(x - K), x == K, p, x > K, a*x + q);

figure('Name', 'Soal 5 - Fungsi Biaya Piecewise');
fplot(C_func, [0, 2*K], 'b', 'LineWidth', 2); hold on;
xline(K, 'k:', 'x=K (Titik Sambung)'); 
xlabel('Volume (x)'); ylabel('Biaya C(x)'); 
title('Plot C(x) Kontinu di x=K');
grid on; hold off;