% Gradient Descent dan Sensitivitas
x0 = 1; 
alpha_normal = 0.002;
iter_max = 500;

% Fungsi Profit Terbalik (yang diminimumkan) dan Turunannya
pi_func = @(x) -(x.^3) + 12*(x.^2) + 100*x - 40;
pi_deriv = @(x) -3*(x.^2) + 24*x + 100;

k_arr = 0:iter_max;
pi_normal = zeros(1, iter_max+1); x_n = x0;
pi_besar = zeros(1, iter_max+1);  x_b = x0; alpha_besar = alpha_normal * 10;
pi_kecil = zeros(1, iter_max+1);  x_k = x0; alpha_kecil = alpha_normal * 0.1;

for i = 1:(iter_max+1)
    % Rekam riwayat profit
    pi_normal(i) = pi_func(x_n);
    pi_besar(i) = pi_func(x_b);
    pi_kecil(i) = pi_func(x_k);
    
    % Update Rule: x_{k+1} = x_k + alpha * turunan(x_k)
    x_n = x_n + alpha_normal * pi_deriv(x_n);
    x_b = x_b + alpha_besar * pi_deriv(x_b);
    x_k = x_k + alpha_kecil * pi_deriv(x_k);
end

% Visualisasi Analisis Sensitivitas
figure('Name', 'Sensitivitas Gradient Descent');
plot(k_arr, pi_normal, 'b-', 'LineWidth', 1.5); hold on;
plot(k_arr, pi_besar, 'r--', 'LineWidth', 1.5);
plot(k_arr, pi_kecil, 'g-.', 'LineWidth', 1.5);
xlabel('Iterasi (k)'); 
ylabel('Nilai Profit \pi(x_k)');
title('Konvergensi Gradient Descent Berdasarkan Learning Rate');
legend('\alpha = 0.002 (Normal)', '\alpha = 0.02 (Terlalu Besar)', '\alpha = 0.0002 (Terlalu Kecil)', 'Location', 'southeast');
grid on; hold off;