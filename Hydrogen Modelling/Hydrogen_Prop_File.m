%%%% Data for properties of hydrogen
load('h2_data.mat');

%%% Hydrogen properties (Semi-perfect gas model)
T_vect = [-75 -50 -25 0 25 50 75 100] + 273.15; % K
h_vect = [2540 2865 3190 3515 3840 4165 4490 4815]; % kJ/kg (Enthalpy)
nu_vect = [6.75 7.25 7.75 8.25 8.80 9.30 9.85 10.35]; % μPa·s (Viscosity)
cond_vect = [132 146 161 175 189 203 217 230]; % mW/m·K (Thermal Conductivity)
cp_vect = [14.1 14.2 14.3 14.4 14.5 14.6 14.7 14.8]; % kJ/kg·K (Specific Heat)

%%% Hydrogen properties (Perfect)
R_h2 = 4.12; %kJ/kg/K
h_h2 = h_vect(5); % kJ/kg;
cp_h2 = cp_vect(5); %kJ/kg/K
nu_h2 = nu_vect(5); %s*uPa
cond_h2 = cond_vect(5); %mW/m/K
