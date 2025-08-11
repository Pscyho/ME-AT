c=3e8
f=1e9
lambda=c/f
omega=2*pi*f
z0=50
N=3
theta=pi/(4*N)
lambda_g=lambda/(4*N)
L=lambda_g/(4*tan(theta))
C=1/(omega*z0*L)
disp('Microstrip Power Divider Result:')
disp(['Wavelength: ', num2str(lambda), ' m'])
disp(['Frequency: ', num2str(f), ' Hz'])
disp(['Characteristic Impedance: ', num2str(z0), ' Ohms'])
disp(['Number of Divisions: ', num2str(N)])
disp(['Theta: ', num2str(theta), ' radians'])
disp(['Guided Wavelength: ', num2str(lambda_g), ' m'])
disp(['Inductance: ', num2str(L), ' H'])
disp(['Capacitance: ', num2str(C), ' F'])

