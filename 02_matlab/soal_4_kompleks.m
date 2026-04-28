% Operasi Kompleks & Visualisasi Argand
z1 = 2 + 2i;
z2 = 2 - 2i;

disp('Verifikasi Perhitungan manual');
disp(['z1 + z2 = ', num2str(z1 + z2)]);
disp(['z1 * z2 = ', num2str(z1 * z2)]);
disp(['z1 / z2 = ', num2str(z1 / z2)]);
disp(['|z1 - z2| = ', num2str(abs(z1 - z2))]);

% Menghitung Akar Kubik Kompleks untuk w = 8 cis(5 derajat)
theta0_rad = deg2rad(5);
r = 8;
r_akar = r^(1/3); 

% Tiga akar kubik menggunakan De Moivre
akar1 = r_akar * exp(1i * (theta0_rad)/3);
akar2 = r_akar * exp(1i * (theta0_rad + 2*pi)/3);
akar3 = r_akar * exp(1i * (theta0_rad + 4*pi)/3);

% Plot di Bidang Argand
figure('Name', 'Soal 4 - Akar Kubik Bidang Argand');
compass([akar1, akar2, akar3]);
title('Tiga Akar Kubik dari 8 \cdot cis(5^\circ)');