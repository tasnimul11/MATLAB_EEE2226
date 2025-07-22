A = poly([3 2 -4]);         % for 3x^2 + 2x - 4
B = poly([2 0 0 -2]);       % for 2x^3 -2

C = conv(A,B) % co-efficients of C(x) = A(x)*B(x)
syms x;
C_eq = poly2sym(C, x)
% SOLVED BY THP

% finding roots
R_A = roots(A)
R_B = roots(B)
R_C = roots(C)
