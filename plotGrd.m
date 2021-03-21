fonts=20; % Fontsizes of all elements in plot
T=1e-3; % Half Period in terms of seconds and 
LENGTH=1e4; % total number of samples=LENGTH
t=linspace(0,5*T,LENGTH); 
G0=1; % Tesla / meter  x-gradient scaling value
Gxb = G0*square(t*(2*pi)/(2*T));
Gxa = zeros(1,LENGTH);
Gxa(find(t>=T/2))=Gxb(1:LENGTH-(length(find(t<T/2))));
t = linspace(-T/2,5*T-T/2,LENGTH);  % Correct time vector for our signals Gxa and Gxb
figure
plot(t,Gxa, 'LineWidth', 2, 'DisplayName', 'G_x(t) from part (a) ')
hold on
plot(t,Gxb, 'LineWidth', 2, 'DisplayName', 'G_x(t) from part (b) ')
legend(gca,'show'); set(gca,'fontsize', fonts);
xlabel('t (sec) ','fontsize',fonts); ylabel('Gradient Value T/m','fontsize',fonts); 
title(['x-Gradient for G_0 = ', num2str(G0), ' T/m'],'fontsize',fonts); grid on; grid minor;
