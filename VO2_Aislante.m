clear all, clc

% constantes
e_inf = 12;  % permitividad dielectica a frecuencia infinita
gamma = 5.75e13; % frecuencia de colisión
w_p = 3.61149e13; % frencuencia de plasma

% Frecuencia 
f = linspace(0.4e12, 1.6e12, 1000); 

% Constante Dielectrica
e = e_inf - (w_p^2)./((2*pi*f).^2 + 1i*(2*pi*f)*gamma);


% Diagrama Parte Img de e
subplot(1,2,1);
plot(f, imag(e));
xlabel('Frecuencia (Hz)');
ylabel('Parte Imaginaria de e');
title('Constante Dielectrica (\epsilon) vs Frecuencia (f)');

% Diagrama Parte Re de e
subplot(1,2,2);
plot(f, real(e));
xlabel('Frecuencia (Hz)');
ylabel('Parte Real de e');
title('Constante Dielectrica (\epsilon) vs Frecuencia (f)');
