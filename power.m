clc
clear all
close all
c=3e8
f=9e9
a=22.86e-3
lambda0=c/f
lambda_g=lambda0/sqrt(1-(lambda0/(2*a))^2)
pin=10
pout=6
Att=10*log10(pin/pout)
fprintf('Frequency is %f GHz \n',f/1e9)
fprintf('Wavelength in free space is %f m \n',lambda0*100)
fprintf('Wavelength in waveguide is %f m \n',lambda_g*100)
fprintf('Attenuation is %f dB \n',Att)
