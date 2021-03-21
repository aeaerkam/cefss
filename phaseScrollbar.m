


% Generate and plot data
x=0:0.01:360;
xmax=max(x);
xmin=min(x);
y=(x);
dx=0;
%% dx is the width of the axis 'window'
a=gca;
figure(1)
subplot(2,2,4)
p=plot(x,y,'DisplayName','Phase Value [0-360 deg]'); legend(gca,'show'); grid on; grid minor;
xticks(0:45:360); xlim([xmin xmax])
set(gca,'fontsize', 14)
set(gca,'DefaultLineLineWidth',2)
% Set appropriate axis limits and settings
set(gcf,'doublebuffer','on');
%% This avoids flickering when updating the axis
% set(a,'xlim',[0 dx]);
% set(a,'ylim',[min(y) max(y)]);

% Generate constants for use in uicontrol initialization
pos=get(a,'position');
% Newpos=[pos(1) pos(2)-0 pos(3) 0.05];
Newpos=[0.561114629512351,0.192554886692152,0.385687143761875,0.05]
%% This will create a slider which is just underneath the axis
%% but still leaves room for the axis labels above the slider
xmax=max(x);
xmin=min(x);

S=['CEFSS4'];
%% Setting up callback string to modify XLim of axis (gca)
%% based on the position of the slider (gcbo)

% Creating Uicontrol
% h=uicontrol('style','slider',...
%     'position',Newpos,...
%     'callback',S,'min',0,'max',xmax-dx);

hPh=uicontrol('style','slider',...
    'units','normalized','position',Newpos,...
    'callback',S,'min',0,'max',xmax-dx);
set(hPh,'Value',135);
