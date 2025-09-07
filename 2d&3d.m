clc 
clear all
close all
theta = linspace(0,pi,180)
E=sin(theta)
figure;
h=polar(theta,E,)
set(h,'color',g,'LineWidth',4)
polarplot(theta,E,'g','LineWidth',4)
title('2D Radiation Pattern of Dipole ')
[theta,phi]=meshgrid(theta,linspace(0,2*pi,180))
E3D=sin(theta)
x=E3D.*sin(theta).*cos(phi)
y=E3D.*sin(theta).*sin(phi)
z=E3D.*cos(theta)
figure;
surf(x,y,z,E3D,'EdgeColor','none')
title('3D Radiation Pattern of Dipole')
xlabel('X')
ylabel('Y')
zlabel('Z')
axis equal
colormap jet
colorbar