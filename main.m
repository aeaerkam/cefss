

% scroll_Cs_value  % fig 1  subp_11   Scroll control
% scroll_Cp_value  % fig 1   subp_12  Scroll control
% Scroll_D        %  Fig 1   subp_21 Scroll control
% Scroll_Phase    % Fig 1   subp_22  Scroll control
% Scroll_toggle_flattop      % Fig 5    Scroll control for frequency smoothing control: 
%                          % Sharp step: Value Below 1 .   Flattop: value above 1 
%                          % Default value 1.05 > 1: Flattop smoothed

Scroll_solIndex
% % % Scroll_R
% fg1=figure(1);
% set(fg1,'Position', [307 45 1569 949])  % First 4 controls are on this figure figure 1
% 
%% Optional for Dual 1080p Monitors, 
%% It does not run IF YOU only HAVE A SINGLE Monitor .
monitors_info = groot; % graphics root object
if (sum(sum(monitors_info.MonitorPositions))> 4002) % True if you have a second monitor
   
fg5=figure(5);
fg5.Position = [3235         549         560         420]; % 

fg7 = figure(7);

fg8 = figure(8);
fg6 = figure(6);
fg9 = figure(9);
fg7.Position = [1976 504 656 491]; 
 fg8.Position = [1977 30 656 383]; 
 
 fg6.Position = [2644         543         656         420];
 fg9.Position = [ 2644         38         656         420];  
end
 clear monitors_info;
