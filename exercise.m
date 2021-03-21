Volume=1e-3;% Volume of water (in meter cube) in 1 kg = 1 L = 1e-3 m^3 water
mass = Volume*1e3; % kg
moles=mass*1000/(15.999+2*1.00784); %Moles of H 
NA= 6.02214076e23; % Avagadro number
N=NA*moles*2 ;% Hydrogen Atoms/kg  (Formula : H_2 O )
h=6.626*10^(-34); % J*s 
gamma = 2*pi*42.576e6;  % Hz/Tesla =  s^(-1) / T
k=1.381e-23;  % J/K  Boltzmann constant
T = 27 +273; % K  Temperature
kT =k*T; % kg m^2 s^(-1) = J (Joules)
B_0=1; % T : Tesla   ( 1 Tesla External Magnetic Field is given)

M = N*(gamma*h/(2*pi))^2 /(4*kT)* B_0  % J/T = Am^2 Magnetic Moment

m = M/Volume % convert to per unit volume A/m magnetization


%%
B_090=2*kT*0.583811/(gamma*h/(2*pi))  % Calculate 90% saturation magnetic field at 300 K

Factor_B0_Front=(gamma*h/(2*pi))/2/kT    % Factor in front of B0

