f=5e9
c=3e8
lambda=c/f
S11=0
S22=0
S12=(1/sqrt(2))
S31=(1/sqrt(2))
S12=(1/sqrt(2))
S13=(1/sqrt(2))
energy_conservation_e=abs(S11)^2+abs(S21)^2+abs(S31)^2
energy_conservation_a=abs(s12)^2
energy_conservation_b=abs(s13)^2
reciprocity_21_12=(s21==s12)
reciprocity_31_13=(s31==s13)
symmetric_21_12=(s21==s12)
symmetric_31_13=(s31==s13)
fprintf('Operating frequency : %.2f GHz\n', f/1e9);
fprintf('Wavelength          : %.2f cm\n', lambda*100);
fprintf('Energy conservation E  : %.2f \n', energy_conservation_e);
fprintf('Energy conservation A  : %.2f \n', energy_conservation_a);
fprintf('Energy conservation B  : %.2f \n', energy_conservation_b);
fprintf('Reciprocity 21-12      : %d \n', reciprocity_21_12);
fprintf('Reciprocity 31-13      : %d \n', reciprocity_31_13);
fprintf('Symmetric 21-12        : %d \n', symmetric_21_12);
fprintf('Symmetric 31-13        : %d \n', symmetric_31_13);
