f = 5e9;        
c = 3e8;        
lambda = c / f; 
N = 4;
d = 0.1;
S11 = 0.1;
S22 = 0;
S12 = sqrt(1 - (S11^2));
S21 = S12;
S13 = 2;
S14 = 0;
S23 = 0;
S24 = 0;
coupling_coefficient = 10 * log10(abs(S12)^2);
isolation = 10 * log10(abs(S13)^2);

% Display results
fprintf('Operating frequency : %.2f GHz\n', f/1e9);
fprintf('Wavelength          : %.2f cm\n', lambda*100);
fprintf('Coupling coefficient: %.2f dB\n', coupling_coefficient);
fprintf('Isolation           : %.2f dB\n', isolation);