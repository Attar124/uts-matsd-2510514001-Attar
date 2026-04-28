% Enkripsi Citra dan Invers Matriks
A = [1 1 2; 1 2 1; 1 1 3];
P = [120 51 200; 80 2 11; 31 90 170];

% Nested Loop (Manual Kofaktor)
n = size(A, 1);
C = zeros(n, n);
for i = 1:n
    for j = 1:n
        % Buat matriks minor
        minor_mat = A;
        minor_mat(i,:) = [];
        minor_mat(:,j) = [];
        % Hitung nilai kofaktor
        C(i,j) = (-1)^(i+j) * det(minor_mat);
    end
end
Adj_A = C';
det_A = det(A);
A_inv_manual = Adj_A / det_A;


A_inv_matlab = inv(A);
error_frob = norm(A_inv_manual - A_inv_matlab, 'fro');

disp('soal 2');
disp(['Norma Error Frobenius: ', num2str(error_frob)]);

% Enkripsi Citra
E = A * P;

% Visualisasi Citra (Grayscale)
figure('Name', 'Soal 2 - Enkripsi Citra Logo');
subplot(1, 2, 1);
imshow(P, []); 
title('Blok Citra Asli (P)');

subplot(1, 2, 2);
imshow(E, []); 
title('Blok Citra Enkripsi (E)');