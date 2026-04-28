% Segmentasi Pelanggan & Invers Fungsi
% Deklarasi Himpunan
A_set = [1, 3, 5, 8, 11, 14, 16];
B_set = [4, 6, 8, 11, 13, 19];
C_set = [2, 8, 11, 12, 18, 21];
U = 1:21;

% Verifikasi Operasi Himpunan
A_U_B_U_C = union(union(A_set, B_set), C_set);
A_int_B_int_C = intersect(intersect(A_set, B_set), C_set);

% (A U B) n C
A_U_B = union(A_set, B_set);
C_comp = setdiff(U, C_set);
AUB_int_Ccomp = intersect(A_U_B, C_comp);

% A beda simetris B
A_sym_B = setxor(A_set, B_set);

disp('Verifikasi Himpunan');
disp(['A U B U C: ', num2str(A_U_B_U_C)]);
disp(['A iris B iris C: ', num2str(A_int_B_int_C)]);
disp(['(A U B) iris C'': ', num2str(AUB_int_Ccomp)]);
disp(['A beda simetris B: ', num2str(A_sym_B)]);

% Verifikasi Invers Fungsi dengan Syms
syms x
f_x = 2*x + 1;
% Jika f(x) = 201, cari nilai x
eqn = f_x == 201;
x_sol = solve(eqn, x);

disp('Verifikasi Fungsi');
disp(['Nilai volume (x) jika pendapatan 201: ', char(x_sol)]);