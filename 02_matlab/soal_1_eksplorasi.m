% Eksplorasi Awal dan Profil Data Transaksi
D = [21, 22, 23, 24, 30, 31, 32];


mean_D = mean(D);
median_D = median(D);
mode_D = mode(D); 
range_D = range(D);
std_D = std(D, 1); % Argumen '1' mengindikasikan perhitungan populasi

disp(['Mean: ', num2str(mean_D)]);
disp(['Median: ', num2str(median_D)]);
disp(['Modus: ', num2str(mode_D)]); % Karena tidak ada modus, MATLAB mengembalikan nilai terkecil
disp(['Range: ', num2str(range_D)]);
disp(['Std Deviasi: ', num2str(std_D)]);

figure('Name', 'Soal 1 - Diagram Batang Penjualan');
bar(D, 'FaceColor', [0.2 0.6 0.8]); hold on;
yline(mean_D, 'r--', 'Rata-rata', 'LineWidth', 1.5);
xlabel('Toko'); 
ylabel('Penjualan (Juta Rupiah)');
title('Penjualan Per Toko - NIM 2510514001');
saveas(gcf, 'Grafik_Soal1_2510514001.png');
hold off;