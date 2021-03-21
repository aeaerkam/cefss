


% Generate and plot data
x=1:1:15;
xmax=max(x);
xmin=min(x);
y=(x);
dx=0;
%% dx is the width of the axis 'window'
a=gca;
figure(89)
% subplot(2,2,3)
p=plot(x,y,'DisplayName','Solution Index [0-15] Max non-zero harmonics cases'); legend(gca,'show'); grid on; grid minor;
title({'Solution Index [1-15] Max non-zero harmonics cases'})
xticks(x); xlim([xmin xmax])
set(gca,'fontsize', 12)
set(gca,'DefaultLineLineWidth',2)
% Set appropriate axis limits and settings
set(gcf,'doublebuffer','on');
%% This avoids flickering when updating the axis
% set(a,'xlim',[0 dx]);
% set(a,'ylim',[min(y) max(y)]);

% Generate constants for use in uicontrol initialization
pos=get(a,'position');
% Newpos=[pos(1) pos(2)-0 pos(3) 0.05];
Newpos=[0.102472179498779,0.180749710979643,0.897527820501221,0.05]
%% This will create a slider which is just underneath the axis
%% but still leaves room for the axis labels above the slider


S=['CEFSS4'];
%% Setting up callback string to modify XLim of axis (gca)
%% based on the position of the slider (gcbo)

% Creating Uicontrol
% h=uicontrol('style','slider',...
%     'position',Newpos,...
%     'callback',S,'min',0,'max',xmax-dx);

solIndex=uicontrol('style','slider',...
    'units','normalized','position',Newpos,...
    'callback',S,'min',1,'max',xmax-dx);
set(solIndex,'Value',1);
