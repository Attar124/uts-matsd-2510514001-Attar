% Forecasting Penjualan
S = [51, 55, 55, 59, 59, 63, 63, 67, 67, 71, 71, 75];

T1_matlab = sum(S);
T2_matlab = sum(S.^2);

disp('soal 7');
disp(['T1 (Total 12 Bulan): ', num2str(T1_matlab)]);
disp(['T2 (Sum of Squares): ', num2str(T2_matlab)]);

% Pemodelan Garis Tren Linear
t = 1:12;
coeffs = polyfit(t, S, 1); 
slope = coeffs(1); 
intercept = coeffs(2);

% Hitung Prediksi
t_pred = 13:18;
S_trend = slope * t + intercept; % Data Garis Tren
S_pred = slope * t_pred + intercept; % Data Masa Depan

figure('Name', 'Soal 7 - Forecasting Polyfit');
plot(t, S, 'bo', 'MarkerFaceColor', 'b', 'DisplayName', 'Data Historis'); hold on;
plot(t, S_trend, 'r--', 'LineWidth', 1.5, 'DisplayName', 'Garis Tren Linear');
plot(t_pred, S_pred, 'g^', 'MarkerFaceColor', 'g', 'MarkerSize', 8, 'DisplayName', 'Prediksi 6 Bulan');

xlabel('Bulan ke-n'); 
ylabel('Penjualan (Juta Rupiah)');
title('Forecasting Penjualan Jangka Pendek');
legend('Location', 'northwest');
grid on; hold off;