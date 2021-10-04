clear
clc

%latitude and longitude
P_lat =50.38;
P_lon =-72.11;
omega = -0.755;

%Los Angeles 34.0522° N, 118.2437° W
% X_lat = 34.0522 ;
% X_lon = -118.2437;

%Honolulu 21.3069° N, 157.8583° W
X_lat = 21.3069 ;
X_lon = -157.8583;

R = 6400*1e6; % in mm

a = acos(sind(X_lat)*sind(P_lat)+cosd(X_lat)*cosd(P_lat)*cosd(P_lon-X_lon));

v = omega*R*sin(a)/1e6

C = asind(cosd(P_lat)*sind(P_lon-X_lon)/sin(a));

beta = 90+C