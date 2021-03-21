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
B_0=1.5; % T : Tesla   ( 1 Tesla External Magnetic Field is given)

M = N*(gamma*h/(2*pi))^2 /(4*kT)* B_0  % J/T = Am^2 Magnetic Moment

m = M/Volume % convert to per unit volume A/m magnetization

% Water's w0 (rad/s)
w0w=gamma*B_0;

% difference between frequencies of water and fat (Wwater-Wfat):
deltaW=2*pi*224; % in units of rad/s
w0f=gamma*B_0-deltaW; % Fat's w0 (rad/s)

% T2 decay constants of water and fat:
T2W=200e-3; T2F=85e-3; % in seconds

% t=0:1e-5:100e-3; % Time vector in seconds
t=0:1e-5:800e-3; % FOR FULL PLOT go up to 4 time constants 

%ENVELOPE OF TOTAL MAGNETIZATION:
MXY_env= M/2*(exp(-t./T2W)+exp(1i*deltaW*t).*exp(-t./T2F));

%ENVELOPE OF TOTAL MAGNETIZATION's x-COMPONENT:
MX_env= real(M./2.*(exp(-t./T2W)+exp(1i*deltaW*t).*exp(-t./T2F)));


% Total magnetization x and y component as real and imaginary parts of this:
MXY= exp(-1i*w0w*t).*M/2.*(exp(-t./T2W)+exp(1i*deltaW*t).*exp(-t./T2F));

figure(25)
set(0,'DefaultLineLineWidth',1.5)

plot(t,MX_env,'DisplayName','Envelope of x-comp. of M '); 
ylabel('Magnetization (A*m^2) for 1 L total sample')
xlabel('Time (s)'); title('1 Liter of total sample: 50% water 50% fat')
grid on; legend(gca,'show')
set(gca,'fontsize', 16)
