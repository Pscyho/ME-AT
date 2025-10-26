clc;
clear all;
close all;

num_elements = 8;  
d = 0.5;         
theta0 = 30;     

theta = linspace(-90, 90, 1000); 

beta = 2 * pi * d * sin(theta * pi / 180);
af_eplane = zeros(size(theta));
for n = 0:num_elements - 1
    af_eplane = af_eplane + exp(1j * n * beta);
end
af_eplane = abs(af_eplane / num_elements);
af_db_eplane = 20 * log10(af_eplane);

figure;
plot(theta, af_db_eplane, 'linewidth', 2);
xlabel('Theta (degrees)');
ylabel('Array Factor (dB)');
title('E-plane Array Factor');
grid on;

phi = 2 * pi * d * sin(theta0 * pi / 180) * cos(theta * pi / 180);
af_hplane = zeros(size(theta));
for n = 0:num_elements - 1
    af_hplane = af_hplane + exp(1j * n * phi);
end
af_hplane = abs(af_hplane / num_elements);
af_db_hplane = 20 * log10(af_hplane);

figure;
plot(theta, af_db_hplane, 'linewidth', 2);
xlabel('Theta (degrees)');
ylabel('Array Factor (dB)');
title('H-plane Array Factor');
grid on;

element_pattern = ones(size(theta));

radiation_pattern_eplane = af_eplane .* element_pattern;
radiation_pattern_hplane = af_hplane .* element_pattern;


figure;
plot(theta, 20 * log10(radiation_pattern_eplane), 'linewidth', 2);
hold on;
plot(theta, 20 * log10(radiation_pattern_hplane), 'linewidth', 2);
xlabel('Theta (degrees)');
ylabel('Radiation Patterns (dB)');
title('Radiation Patterns: E-plane vs H-plane');
legend('E-plane', 'H-plane');
grid on;