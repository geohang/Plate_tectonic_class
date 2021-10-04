clear
clc
%% a
%latitude and longitude
E_lat = -3.25;
E_lon = 148.1;
omega = 0.128/1e6;

R = 6400*1e6; % in mm

Ex = omega*R*cosd(E_lat)*cosd(E_lon);
Ey = omega*R*cosd(E_lat)*sind(E_lon);
Ez = omega*R*sind(E_lat);

%latitude and longitude
E_lat = -14.71;
E_lon = -140.3;
omega = 0.653/1e6;

Ex2 = omega*R*cosd(E_lat)*cosd(E_lon);
Ey2 = omega*R*cosd(E_lat)*sind(E_lon);
Ez2 = omega*R*sind(E_lat);

Ex3 = Ex-Ex2
Ey3 = Ey-Ey2
Ez3 = Ez-Ez2

%% b
lambda = asind(Ez3/sqrt(Ex3^2+Ey3^2+Ez3^2))
phi = atand(Ey3/Ex3)
ome_new = sqrt(Ex3^2+Ey3^2+Ez3^2)/R*1e6

P_lat = lambda;
P_lon = phi;
omega = ome_new;
%Brisbane -27.470125, 153.021072
% X_lat = -27.470125 ;
% X_lon = 153.021072;

%Capetown -33.918861, 18.423300
X_lat = -33.918861 ;
X_lon = 18.423300;


a = acos(sind(X_lat)*sind(P_lat)+cosd(X_lat)*cosd(P_lat)*cosd(P_lon-X_lon));

v = omega*R*sin(a)/1e6
C = asind(cosd(P_lat)*sind(P_lon-X_lon)/sin(a));
beta = 90+C

%% final add

V_af_B = [3.82*10^3*cosd(8.1); 3.82*10^3*sind(8.1)];
V_af_C = [3.38*10^3*cosd(128.32); 3.38*10^3*sind(128.32)];

VV = V_af_B - V_af_C;

mag = sqrt(VV(1)^2+VV(2)^2)
ang = atand(VV(2)/VV(1))