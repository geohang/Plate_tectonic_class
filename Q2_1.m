clear

%latitude and longitude
E_lat = 10.45;
E_lon = 113.39;
omega = 0.09;

R = 1%6400*1e6; % in mm

Ex = omega*R*cosd(E_lat)*cosd(E_lon);
Ey = omega*R*cosd(E_lat)*sind(E_lon);
Ez = omega*R*sind(E_lat);

%latitude and longitude
E_lat = 44.18;
E_lon = 158.76;
omega = 0.107;

Ex2 = omega*R*cosd(E_lat)*cosd(E_lon);
Ey2 = omega*R*cosd(E_lat)*sind(E_lon);
Ez2 = omega*R*sind(E_lat);
Ex-Ex2
Ey-Ey2
Ez-Ez2
sqrt((Ex-Ex2)^2+(Ey-Ey2)^2+(Ez-Ez2)^2)