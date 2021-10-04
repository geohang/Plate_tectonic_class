clear

%latitude and longitude
E_lat = 50.38;
E_lon = -72.11;
omega = -0.755/1e6;

%Los Angeles 34.0522° N, 118.2437° W
% P_lat =  34.0522 ;
% P_lon =-118.2437;

%Honolulu 21.3069° N, 157.8583° W
P_lat =  21.3069 ;
P_lon =-157.8583;


R = 6400*1e6; % in mm

Ex = cosd(E_lat)*cosd(E_lon);
Ey = cosd(E_lat)*sind(E_lon);
Ez = sind(E_lat);

Px = cosd(P_lat)*cosd(P_lon);
Py = cosd(P_lat)*sind(P_lon);
Pz = sind(P_lat);


V = omega.*R.*cross([Ex;Ey;Ez],[Px;Py;Pz]);

Trans_mat=[-sind(P_lat)*cosd(P_lon),-sind(P_lat)*sind(P_lon),cosd(P_lat);...
           -sind(P_lon), cosd(P_lon), 0;...
           -cosd(P_lat)*cosd(P_lon),-cosd(P_lat)*sind(P_lon),-sind(P_lat)];

V_new = Trans_mat*V;

Vmag = sqrt(V_new(1)^2+V_new(2)^2)
Vang = atand(V_new(2)/V_new(1))




