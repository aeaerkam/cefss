su = M0*B*A*sin(pi*A*k_xa)./(pi*A*k_xa);
su(find(k_xa==0 & t>0))=M0*B*A;
sb = M0*B*A*sin(pi*A*k_xb)./(pi*A*k_xb);
sb(find(k_xb==0 & t>0))=M0*B*A;

figure
plot(t,su, 'LineWidth', 2, 'DisplayName', 's(t) from part (a) ')
legend(gca,'show'); set(gca,'fontsize', fonts);
xlabel('t (sec) ','fontsize',fonts); ylabel('Signal value [units: M_0*B*A]: A*m','fontsize',fonts); 
title(['s(t) baseband signal from part (a)'],'fontsize',fonts); grid on; grid minor;
figure
ha=plot(t,su, 'LineWidth', 2, 'DisplayName', 's(t) from part (a) '); hold on;
hb=plot(t,sb, 'LineWidth', 2, 'DisplayName', 's(t) from part (b) ');
delete(ha)
legend(gca,'show'); set(gca,'fontsize', fonts);
xlabel('t (sec) ','fontsize',fonts); ylabel('Signal value [units: M_0*B*A]: A*m','fontsize',fonts); 
title(['s(t) baseband signal from part (b)'],'fontsize',fonts); grid on; grid minor;


