c=3e8
f=1e9
lambda=c/f %wavelength in meters
omega=2*pi*f %angular frequency
z0=50 %characteristic impedance in Ohms
N=3 %this is the number of divisions
theta=pi/(4*N) %angle in radians for each division
lambda_g=lambda/(4*N) %guided wavelength
L=lambda_g/(4*tan(theta)) %inductance in Henries
C=1/(omega*z0*L) %capacitance in Farads
disp('Microstrip Power Divider Result:')
disp(['Wavelength: ', num2str(lambda), ' m'])
disp(['Frequency: ', num2str(f), ' Hz'])
disp(['Characteristic Impedance: ', num2str(z0), ' Ohms'])
disp(['Number of Divisions: ', num2str(N)])
disp(['Theta: ', num2str(theta), ' radians'])
disp(['Guided Wavelength: ', num2str(lambda_g), ' m'])
disp(['Inductance: ', num2str(L), ' H'])
disp(['Capacitance: ', num2str(C), ' F'])

