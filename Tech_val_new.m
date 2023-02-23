close all;  clear all;  clc;
% used to validate the selected joint angles.

%% Participants folder names 
PPID = {'38','39','446','450','451','452','457','458','461','462','527','740','742','743','744','747',...
        '749','754','756','757','761','764','765','770','852','864','878','879','880','894','909','911','912','915','916',...
        '919','920','921','923','924','925','927','928','929','930','933','935','937','938','939','940','956','957','958',...
        '960','968','1071','1108','1111','1118','1121','1125','1127','1129','1130','1131','1134','1136','1138','1140',...
        '1142','1144','1145','1147','1151','1153','1157','1160','1161','1163','1165','1167','1169','1178','1179','1180','1181',...
        '1195','1226','1227','1326','1329','1337','1357','1362','1367','1369','1371','1388','1390','1400','1419','1420','1421',...
        '1423','1426','1427','1428','1429','1430','1431','1438','1440', '46','47','50','1132','1449','1452','1455','1457',...
        '1463','1465','1466','1471','1472','1473','1474','1475','1479','1480','1484','1485','1486','1498','1499','1502',...
        '1503','1504','1505','1508','1517','1520','1525','1528','1535','1536','1539','1540','1541','1542','1543','1557',...
        '1559','1560','1561','1562','1563','1564','1571','1573','1577','1580','1581','1582','1594','1607','1608','1609',...
        '1623','1637','1654','1670','1693','1744','1808','1890','1891','1895','1900','1904'};
% '1424' & '1913' were treated seperately b/c of different # of trials.

parent_fld = 'E:\Xiong\Biomech\D_CO_Data\Gwyn\SciData\Dataset\Kinematic_Data';
cd(parent_fld);
flds = dir(parent_fld);
pars = {flds(3:end).name};
% Note: the function 'normalize' uses the built-in function 'pchip'.

%% Drop jump
f1 = figure; % hip flexion/extension
f2 = figure; % knee flexion/extension
f3 = figure; % trunk flexion/extension
f4 = figure; % ankle plantar- dorsi- flexion
for p1 = 1:length(PPID)
    cd([parent_fld,'/',PPID{p1}]);
    load(['JA_',PPID{p1},'.mat']);
    load(['startstop_',PPID{p1},'_DJ_final','.mat']); % load the start and stop point of the movement.
    start_frame = round(start);  stop_frame = round(stop);    
    % L/R Hip Flexion/Extension
    set(0,'CurrentFigure',f1)
    plot(normalize(R_HIP_O{7,1}(start_frame:stop_frame,1),100),'r'); hold on;
    plot(normalize(L_HIP_O{7,1}(start_frame:stop_frame,1),100),'b');
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Flexion / extension [degrees]');     
    % L/R Knee Flexion/Extension
    set(0,'CurrentFigure',f2)
    plot(normalize(R_KN_O{7,1}(start_frame:stop_frame,1),100),'r'); hold on;
    plot(normalize(L_KN_O{7,1}(start_frame:stop_frame,1),100),'b');
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Flexion / extension [degrees]')        
    % Trunk Flexion/Extension
    set(0,'CurrentFigure',f3)
    plot(normalize(TRNK_O{7,1}(start_frame:stop_frame,1),100),'r'); hold on;
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Flexion / extension [degrees]')      
    % L/R Ankle Dorsi-/Plantar- flexion
    set(0,'CurrentFigure',f4)
    plot(normalize(R_ANK_O{7,1}(start_frame:stop_frame,1),100),'r'); hold on;
    plot(normalize(L_ANK_O{7,1}(start_frame:stop_frame,1),100),'b');
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Plantar- / dorsi-flexion [degrees]')    
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1424 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1424']);
load(['JA_','1424','.mat']);
load(['startstop_','1424','_DJ_final','.mat']); % load the start and stop point of the movement.
start_frame = round(start);  stop_frame = round(stop);
% L/R Hip Flexion/Extension
set(0,'CurrentFigure',f1)
plot(normalize(R_HIP_O{8,1}(start_frame:stop_frame,1),100),'r'); hold on;
plot(normalize(L_HIP_O{8,1}(start_frame:stop_frame,1),100),'b');
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');     
% L/R Knee Flexion/Extension
set(0,'CurrentFigure',f2)
plot(normalize(R_KN_O{8,1}(start_frame:stop_frame,1),100),'r'); hold on;
plot(normalize(L_KN_O{8,1}(start_frame:stop_frame,1),100),'b');
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]')        
% Trunk Flexion/Extension
set(0,'CurrentFigure',f3)
plot(normalize(TRNK_O{8,1}(start_frame:stop_frame,1),100),'r'); hold on;
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]')     
% L/R Ankle Dorsi-/Plantar- flexion
set(0,'CurrentFigure',f4)
plot(normalize(R_ANK_O{8,1}(start_frame:stop_frame,1),100),'r'); hold on;
plot(normalize(L_ANK_O{8,1}(start_frame:stop_frame,1),100),'b');
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Plantar- / dorsi-flexion [degrees]')    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1913 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1913']);
load(['JA_','1913','.mat']);
load(['startstop_','1913','_DJ_final','.mat']); 
start_frame = round(start);
stop_frame = round(stop);
% L/R Hip Flexion/Extension
set(0,'CurrentFigure',f1)
plot(normalize(R_HIP_O{8,1}(start_frame:stop_frame,1),100),'r'); hold on;
plot(normalize(L_HIP_O{8,1}(start_frame:stop_frame,1),100),'b');
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');   
% L/R Knee Flexion/Extension
set(0,'CurrentFigure',f2)
plot(normalize(R_KN_O{8,1}(start_frame:stop_frame,1),100),'r'); hold on;
plot(normalize(L_KN_O{8,1}(start_frame:stop_frame,1),100),'b');
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]')   
% Trunk Flexion/Extension
set(0,'CurrentFigure',f3)
plot(normalize(TRNK_O{8,1}(start_frame:stop_frame,1),100),'r'); hold on;
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]')   
% L/R Ankle Dorsi-/Plantar- flexion
set(0,'CurrentFigure',f4)
plot(normalize(R_ANK_O{8,1}(start_frame:stop_frame,1),100),'r'); hold on;
plot(normalize(L_ANK_O{8,1}(start_frame:stop_frame,1),100),'b');
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Plantar- / dorsi-flexion [degrees]')    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Hop Down Left/Right 
f5 = figure; % hip adduction/abduction
f6 = figure; % knee flexion/extension
f7 = figure; % trunk flexion/extension
f8 = figure; % ankle dorsi-/plantar- flexion
for p1 = 1:length(PPID)
    cd([parent_fld,'/',PPID{p1}]);
    load(['JA_',PPID{p1},'.mat']);
    startstop_right = load(['startstop_',PPID{p1},'_HDR_final','.mat']);  startstop_left = load(['startstop_',PPID{p1},'_HDL_final','.mat']); 
    % right
    start_frame_r = round(startstop_right.start); 
    if round(startstop_right.stop) > length(R_HIP_O{13,1})
       stop_frame_r = length(R_HIP_O{13,1});
    else
       stop_frame_r = round(startstop_right.stop);
    end      
    %left
    start_frame_l = round(startstop_left.start);  
    if round(startstop_left.stop) > length(R_HIP_O{12,1})
       stop_frame_l = length(R_HIP_O{12,1});
    else
        stop_frame_l = round(startstop_left.stop);
    end       
    % L/R Hip Adduction/Abduction
    set(0,'CurrentFigure',f5)
    plot(normalize(R_HIP_O{13,1}(start_frame_r:stop_frame_r,2),100),'r'); hold on;
    plot(normalize(L_HIP_O{12,1}(start_frame_l:stop_frame_l,2),100),'b'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Adduction / abduction [degrees]');     
    % L/R Knee Flexion/Extension
    set(0,'CurrentFigure',f6)
    plot(normalize(R_KN_O{13,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
    plot(normalize(L_KN_O{12,1}(start_frame_l:stop_frame_l,1),100),'b');
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Flexion / extension [degrees]')      
    % Trunk Flexion/Extension
    set(0,'CurrentFigure',f7)
    plot(normalize(TRNK_O{13,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
    plot(normalize(TRNK_O{12,1}(start_frame_l:stop_frame_l,1),100),'b');
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Flexion / extension [degrees]')      
    % L/R Ankle Dorsi-/Plantar- flexion
    set(0,'CurrentFigure',f8)
    plot(normalize(R_ANK_O{13,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
    plot(normalize(L_ANK_O{12,1}(start_frame_l:stop_frame_l,1),100),'b');
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Plantar- / dorsi-flexion [degrees]')        
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1424 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1424']);
load(['JA_','1424','.mat']);
startstop_right = load(['startstop_','1424','_HDR_final','.mat']); startstop_left = load(['startstop_','1424','_HDL_final','.mat']);    
% right
start_frame_r = round(startstop_right.start); 
if round(startstop_right.stop) > length(R_HIP_O{14,1})
   stop_frame_r = length(R_HIP_O{14,1});
else
   stop_frame_r = round(startstop_right.stop);
end      
% left
start_frame_l = round(startstop_left.start);  
if round(startstop_left.stop) > length(R_HIP_O{13,1})
   stop_frame_l = length(R_HIP_O{13,1});
else
   stop_frame_l = round(startstop_left.stop);
end   
% L/R Hip Adduction/Abduction
set(0,'CurrentFigure',f5)
plot(normalize(R_HIP_O{14,1}(start_frame_r:stop_frame_r,2),100),'r'); hold on;
plot(normalize(L_HIP_O{13,1}(start_frame_l:stop_frame_l,2),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Adduction / abduction [degrees]');     
% L/R Knee Flexion/Extension
set(0,'CurrentFigure',f6)
plot(normalize(R_KN_O{14,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(L_KN_O{13,1}(start_frame_l:stop_frame_l,1),100),'b');
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]')     
% Trunk Flexion/Extension
set(0,'CurrentFigure',f7)
plot(normalize(TRNK_O{14,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(TRNK_O{13,1}(start_frame_l:stop_frame_l,1),100),'b');
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]')       
% L/R Ankle Dorsi-/Plantar- flexion
set(0,'CurrentFigure',f8)
plot(normalize(R_ANK_O{14,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(L_ANK_O{13,1}(start_frame_l:stop_frame_l,1),100),'b');
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Plantar- / dorsi-flexion [degrees]')        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1913 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1913']);
load(['JA_','1913','.mat']);
startstop_right = load(['startstop_','1913','_HDR_final','.mat']); startstop_left = load(['startstop_','1913','_HDL_final','.mat']); 
% right side
start_frame_r = round(startstop_right.start);
if round(startstop_right.stop) > length(R_HIP_O{14,1})
   stop_frame_r = length(R_HIP_O{14,1});
else
   stop_frame_r = round(startstop_right.stop);
end  
% left side 
start_frame_l = round(startstop_left.start);
if round(startstop_left.stop) > length(R_HIP_O{13,1})
   stop_frame_l = length(R_HIP_O{13,1});
else
   stop_frame_l = round(startstop_left.stop);
end   
% L/R Hip Adduction/Abduction
set(0,'CurrentFigure',f5)
plot(normalize(R_HIP_O{14,1}(start_frame_r:stop_frame_r,2),100),'r'); hold on;
plot(normalize(L_HIP_O{13,1}(start_frame_l:stop_frame_l,2),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Adduction / abduction [degrees]');
% L/R Knee Flexion/Extension
set(0,'CurrentFigure',f6)
plot(normalize(R_KN_O{14,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(L_KN_O{13,1}(start_frame_l:stop_frame_l,1),100),'b');
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]')   
% Trunk Flexion/Extension
set(0,'CurrentFigure',f7)
plot(normalize(TRNK_O{14,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(TRNK_O{13,1}(start_frame_l:stop_frame_l,1),100),'b');
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]')
% L/R Ankle Dorsi-/Plantar- flexion
set(0,'CurrentFigure',f8)
plot(normalize(R_ANK_O{14,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(L_ANK_O{13,1}(start_frame_l:stop_frame_l,1),100),'b');
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Plantar- / dorsi-flexion [degrees]')  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% L-Hop Left and Right: 
f9 = figure;  % hip ad- abduction
f10 = figure; % knee flexion/extension
f11 = figure; % trunk flexion/extension
f12 = figure; % ankle plantar- dorsi- flexion
for p1 = 1:length(PPID)
    cd([parent_fld,'/',PPID{p1}]);
    load(['JA_',PPID{p1},'.mat']);
    startstop_right = load(['startstop_',PPID{p1},'_LHR_final','.mat']); startstop_left = load(['startstop_',PPID{p1},'_LHL_final','.mat']);   
    % right
    start_frame_r = round(startstop_right.landing); 
    if round(startstop_right.stop) > length(R_HIP_O{15,1})
       stop_frame_r = length(R_HIP_O{15,1});
    else
       stop_frame_r = round(startstop_right.stop);
    end   
    %left
    start_frame_l = round(startstop_left.landing);  
    if round(startstop_left.stop) > length(R_HIP_O{14,1})
       stop_frame_l = length(R_HIP_O{14,1});
    else
        stop_frame_l = round(startstop_left.stop);
    end    
    % L/R Hip Add- / Abduction
    set(0,'CurrentFigure',f9)
    plot(normalize(R_HIP_O{15,1}(start_frame_r:stop_frame_r,2),100),'r'); hold on;
    plot(normalize(L_HIP_O{14,1}(start_frame_l:stop_frame_l,2),100),'b'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Adduction / abduction [degrees]');       
    % L/R Knee Flexion/Extension
    set(0,'CurrentFigure',f10)
    plot(normalize(R_KN_O{15,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
    plot(normalize(L_KN_O{14,1}(start_frame_l:stop_frame_l,1),100),'b'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Flexion / extension [degrees]');            
    % Trunk Flexion/Extension
    set(0,'CurrentFigure',f11)
    plot(normalize(TRNK_O{15,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
    plot(normalize(TRNK_O{14,1}(start_frame_l:stop_frame_l,1),100),'b'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Flexion / extension [degrees]');    
    % L/R Ankle Plantar- / Dorsi-flexion
    set(0,'CurrentFigure',f12)
    plot(normalize(R_ANK_O{15,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
    plot(normalize(L_ANK_O{14,1}(start_frame_l:stop_frame_l,1),100),'b'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Plantar- / dorsi-flexion [degrees]');   
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1424 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1424']);
load(['JA_','1424','.mat']);
startstop_right = load(['startstop_','1424','_LHR_final','.mat']); startstop_left = load(['startstop_','1424','_LHL_final','.mat']); 
% right
start_frame_r = round(startstop_right.landing); 
if round(startstop_right.stop) > length(R_HIP_O{16,1})
   stop_frame_r = length(R_HIP_O{16,1});
else
   stop_frame_r = round(startstop_right.stop);
end
% left
start_frame_l = round(startstop_left.landing);  
if round(startstop_left.stop) > length(R_HIP_O{15,1})
   stop_frame_l = length(R_HIP_O{15,1});
else
    stop_frame_l = round(startstop_left.stop);
end 
% L/R Hip Add- / Abduction
set(0,'CurrentFigure',f9)
plot(normalize(R_HIP_O{16,1}(start_frame_r:stop_frame_r,2),100),'r'); hold on;
plot(normalize(L_HIP_O{15,1}(start_frame_l:stop_frame_l,2),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Adduction / abduction [degrees]');   
% L/R Knee Flexion/Extension
set(0,'CurrentFigure',f10)
plot(normalize(R_KN_O{16,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(L_KN_O{15,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');        
% Trunk Flexion/Extension
set(0,'CurrentFigure',f11)
plot(normalize(TRNK_O{16,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(TRNK_O{15,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');
% L/R Ankle Plantar- / Dorsi-flexion
set(0,'CurrentFigure',f12)
plot(normalize(R_ANK_O{16,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(L_ANK_O{15,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Plantar- / dorsi-flexion [degrees]');  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1913 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1913']);
load(['JA_','1913','.mat']);
startstop_right = load(['startstop_','1913','_LHR_final','.mat']); startstop_left = load(['startstop_','1913','_LHL_final','.mat']); 
% right side
start_frame_r = round(startstop_right.landing);
if round(startstop_right.stop) > length(R_HIP_O{16,1})
   stop_frame_r = length(R_HIP_O{16,1});
else
   stop_frame_r = round(startstop_right.stop);
end
% left side
start_frame_l = round(startstop_left.landing);    
if round(startstop_left.stop) > length(R_HIP_O{15,1})
   stop_frame_l = length(R_HIP_O{15,1});
else
   stop_frame_l = round(startstop_left.stop);
end
% L/R Hip Add- / Abduction
set(0,'CurrentFigure',f9)
plot(normalize(R_HIP_O{16,1}(start_frame_r:stop_frame_r,2),100),'r'); hold on;
plot(normalize(L_HIP_O{15,1}(start_frame_l:stop_frame_l,2),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Adduction / abduction [degrees]');    
% L/R Knee Flexion/Extension
set(0,'CurrentFigure',f10)
plot(normalize(R_KN_O{16,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(L_KN_O{15,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');    
% Trunk Flexion/Extension
set(0,'CurrentFigure',f11)
plot(normalize(TRNK_O{16,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(TRNK_O{15,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');
% L/R Ankle Plantar- / Dorsi-flexion
set(0,'CurrentFigure',f12)
plot(normalize(R_ANK_O{16,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(L_ANK_O{15,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Plantar- / dorsi-flexion [degrees]');  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Lunge Left/Right
f13 = figure; % trunk flexion/extension
f14 = figure; % hip flexion/extension
f15 = figure; % knee flexion/extension
f16 = figure; % ankle plantar- dorsi- flexion
for p1 = 1:length(PPID)
    cd([parent_fld,'/',PPID{p1}]);
    load(['JA_',PPID{p1},'.mat']);
    startstop_right = load(['startstop_',PPID{p1},'_LR_final','.mat']); startstop_left = load(['startstop_',PPID{p1},'_LL_final','.mat']);    
    % right
    start_frame_r = round(startstop_right.start); 
    if round(startstop_right.stop) > length(R_HIP_O{17,1})
       stop_frame_r = length(R_HIP_O{17,1});
    else
       stop_frame_r = round(startstop_right.stop);
    end   
    %left
    start_frame_l = round(startstop_left.start);  
    if round(startstop_left.stop) > length(R_HIP_O{16,1})
       stop_frame_l = length(R_HIP_O{16,1});
    else
        stop_frame_l = round(startstop_left.stop);
    end   
    % Trunk Flexion/Extension
    set(0,'CurrentFigure',f13)
    plot(normalize(TRNK_O{17,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
    plot(normalize(TRNK_O{16,1}(start_frame_l:stop_frame_l,1),100),'b'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Flexion / extension [degrees]');        
    % L/R Hip Flexion/Extension
    set(0,'CurrentFigure',f14)
    plot(normalize(R_HIP_O{17,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
    plot(normalize(L_HIP_O{16,1}(start_frame_l:stop_frame_l,1),100),'b'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Flexion / extension [degrees]');        
    % L/R Knee Flexion/Extension
    set(0,'CurrentFigure',f15)
    plot(normalize(R_KN_O{17,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
    plot(normalize(L_KN_O{16,1}(start_frame_l:stop_frame_l,1),100),'b'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Flexion / extension [degrees]');       
    % L/R Ankle Plantar- / Dorsi-flexion
    set(0,'CurrentFigure',f16)
    plot(normalize(R_ANK_O{17,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
    plot(normalize(L_ANK_O{16,1}(start_frame_l:stop_frame_l,1),100),'b'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Plantar- / dorsi-flexion [degrees]');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1424 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1424']);
load(['JA_','1424','.mat']);
startstop_right = load(['startstop_','1424','_LR_final','.mat']); startstop_left = load(['startstop_','1424','_LL_final','.mat']);
% right
start_frame_r = round(startstop_right.start); 
if round(startstop_right.stop) > length(R_HIP_O{18,1})
   stop_frame_r = length(R_HIP_O{18,1});
else
   stop_frame_r = round(startstop_right.stop);
end
% left
start_frame_l = round(startstop_left.start);  
if round(startstop_left.stop) > length(R_HIP_O{17,1})
   stop_frame_l = length(R_HIP_O{17,1});
else
    stop_frame_l = round(startstop_left.stop);
end
% Trunk Flexion/Extension
set(0,'CurrentFigure',f13)
plot(normalize(TRNK_O{18,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(TRNK_O{17,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');    
% L/R Hip Flexion/Extension
set(0,'CurrentFigure',f14)
plot(normalize(R_HIP_O{18,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(L_HIP_O{17,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');    
% L/R Knee Flexion/Extension
set(0,'CurrentFigure',f15)
plot(normalize(R_KN_O{18,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(L_KN_O{17,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');    
% L/R Ankle Plantar- / Dorsi-flexion
set(0,'CurrentFigure',f16)
plot(normalize(R_ANK_O{18,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(L_ANK_O{17,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Plantar- / dorsi-flexion [degrees]');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1913 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1913']);
load(['JA_','1913','.mat']);
startstop_right = load(['startstop_','1913','_LR_final','.mat']);  startstop_left = load(['startstop_','1913','_LL_final','.mat']); 
% right side
start_frame_r = round(startstop_right.start);   
if round(startstop_right.stop) > length(R_HIP_O{18,1})
   stop_frame_r = length(R_HIP_O{18,1});
else
   stop_frame_r = round(startstop_right.stop);
end
% left side
start_frame_l = round(startstop_left.start);   
if round(startstop_left.stop) > length(R_HIP_O{17,1})
   stop_frame_l = length(R_HIP_O{17,1});
else
   stop_frame_l = round(startstop_left.stop);
end
% Trunk Flexion/Extension
set(0,'CurrentFigure',f13)
plot(normalize(TRNK_O{18,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(TRNK_O{17,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');      
% L/R Hip Flexion/Extension
set(0,'CurrentFigure',f14)
plot(normalize(R_HIP_O{18,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(L_HIP_O{17,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');
% L/R Knee Flexion/Extension
set(0,'CurrentFigure',f15)
plot(normalize(R_KN_O{18,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(L_KN_O{17,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');   
% L/R Ankle Plantar- / Dorsi-flexion
set(0,'CurrentFigure',f16)
plot(normalize(R_ANK_O{18,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(L_ANK_O{17,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Plantar- / dorsi-flexion [degrees]');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Rotary Stability Left/Right          
f17 = figure; % trunk flexion/extension
f18 = figure; % trunk lateral bending
f19 = figure; % hip flexion/extension
f20 = figure; % knee flexion/extension
for p1 = 1:length(PPID)
    cd([parent_fld,'/',PPID{p1}]);
    load(['JA_',PPID{p1},'.mat']);
    startstop_right = load(['startstop_',PPID{p1},'_RSR_final','.mat']);  startstop_left = load(['startstop_',PPID{p1},'_RSL_final','.mat']); 
    start_frame_r = round(startstop_right.start); stop_frame_r = round(startstop_right.stop);
    start_frame_l = round(startstop_left.start); stop_frame_l = round(startstop_left.stop);      
    % Trunk flexion/extension
    set(0,'CurrentFigure',f17)
    plot(normalize(TRNK_O{19,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
    plot(normalize(TRNK_O{18,1}(start_frame_l:stop_frame_l,1),100),'b'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Flexion / extension [degrees]');    
    % Trunk lateral bending
    set(0,'CurrentFigure',f18)
    plot(normalize(TRNK_O{19,1}(start_frame_r:stop_frame_r,2),100),'r'); hold on;
    plot(normalize(TRNK_O{18,1}(start_frame_l:stop_frame_l,2),100),'b'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Lateral flexion / extension [degrees]');  
    % Hip flexion/extension
    set(0,'CurrentFigure',f19)
    plot(normalize(L_HIP_O{19,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
    plot(normalize(R_HIP_O{18,1}(start_frame_l:stop_frame_l,1),100),'b'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Flexion / extension [degrees]');
    % Knee flexion/extension
    set(0,'CurrentFigure',f20)
    plot(normalize(L_KN_O{19,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
    plot(normalize(R_KN_O{18,1}(start_frame_l:stop_frame_l,1),100),'b'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Flexion / extension [degrees]');    
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1424 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1424']);
load(['JA_','1424','.mat']);
startstop_right = load(['startstop_','1424','_RSR_final','.mat']);  startstop_left = load(['startstop_','1424','_RSL_final','.mat']); 
start_frame_r = round(startstop_right.start); stop_frame_r = round(startstop_right.stop);
start_frame_l = round(startstop_left.start); stop_frame_l = round(startstop_left.stop);  
% Trunk flexion/extension
set(0,'CurrentFigure',f17)
plot(normalize(TRNK_O{20,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(TRNK_O{19,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');
% Trunk lateral bending
set(0,'CurrentFigure',f18)
plot(normalize(TRNK_O{20,1}(start_frame_r:stop_frame_r,2),100),'r'); hold on;
plot(normalize(TRNK_O{19,1}(start_frame_l:stop_frame_l,2),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Lateral flexion / extension [degrees]');  
% Hip flexion/extension
set(0,'CurrentFigure',f19)
plot(normalize(L_HIP_O{20,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(R_HIP_O{19,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');
% Knee flexion/extension
set(0,'CurrentFigure',f20)
plot(normalize(L_KN_O{20,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(R_KN_O{19,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1913 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1913']);
load(['JA_','1913','.mat']);
startstop_right = load(['startstop_','1913','_RSR_final','.mat']);  startstop_left = load(['startstop_','1913','_RSL_final','.mat']);
% right side
start_frame_r = round(startstop_right.start);   
if round(startstop_right.stop) > length(TRNK_O{20,1})
   stop_frame_r = length(TRNK_O{20,1});
else
   stop_frame_r = round(startstop_right.stop);
end
% left side
start_frame_l = round(startstop_left.start);   
if round(startstop_left.stop) > length(TRNK_O{19,1})
   stop_frame_l = length(TRNK_O{19,1});
else
   stop_frame_l = round(startstop_left.stop);
end
% Trunk flexion/extension
set(0,'CurrentFigure',f17)
plot(normalize(TRNK_O{20,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(TRNK_O{19,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');
% Trunk lateral bending
set(0,'CurrentFigure',f18)
plot(normalize(TRNK_O{20,1}(start_frame_r:stop_frame_r,2),100),'r'); hold on;
plot(normalize(TRNK_O{19,1}(start_frame_l:stop_frame_l,2),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Lateral flexion / extension [degrees]');      
% Hip flexion/extension
set(0,'CurrentFigure',f19)
plot(normalize(L_HIP_O{20,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(R_HIP_O{19,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');
% Knee flexion/extension
set(0,'CurrentFigure',f20)
plot(normalize(L_KN_O{20,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(R_KN_O{19,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Step Down Left/Right
f21 = figure; % trunk flexion/extension
f22 = figure; % hip flexion/extension
f23 = figure; % knee flexion/extension
f24 = figure; % ankle plantar- / dorsi-flexion
for p1 = 1:length(PPID_120Hz)
    cd([parent_fld,'/',PPID_120Hz{p1}]);
    load(['JA_',PPID_120Hz{p1},'.mat']);
    startstop_right = load(['startstop_',PPID_120Hz{p1},'_SDR_final','.mat']); startstop_left = load(['startstop_',PPID_120Hz{p1},'_SDL_final','.mat']);     
    % right
    start_frame_r = round(startstop_right.start); 
    if round(startstop_right.stop) > length(R_HIP_O{27,1})
       stop_frame_r = length(R_HIP_O{27,1});
    else
       stop_frame_r = round(startstop_right.stop);
    end    
    %left
    start_frame_l = round(startstop_left.start);  
    if round(startstop_left.stop) > length(R_HIP_O{26,1})
       stop_frame_l = length(R_HIP_O{26,1});
    else
        stop_frame_l = round(startstop_left.stop);
    end    
    % Trunk Flexion/Extension
    set(0,'CurrentFigure',f21)
    plot(normalize(TRNK_O{27,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
    plot(normalize(TRNK_O{26,1}(start_frame_l:stop_frame_l,1),100),'b'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Felxion / extension [degrees]');             
    % L/R Hip Felxion/Extension
    set(0,'CurrentFigure',f22)
    plot(normalize(R_HIP_O{27,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
    plot(normalize(L_HIP_O{26,1}(start_frame_l:stop_frame_l,1),100),'b'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Felxion / extension [degrees]');       
    % L/R Knee Felxion/Extension
    set(0,'CurrentFigure',f23)
    plot(normalize(R_KN_O{27,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
    plot(normalize(L_KN_O{26,1}(start_frame_l:stop_frame_l,1),100),'b'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Felxion / extension [degrees]');    
    % L/R Ankle Plantar-/Dorsi-flexion
    set(0,'CurrentFigure',f24)
    plot(normalize(R_ANK_O{27,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
    plot(normalize(L_ANK_O{26,1}(start_frame_l:stop_frame_l,1),100),'b'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Plantar- / dorsi-flexion [degrees]');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1424 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1424']);
load(['JA_','1424','.mat']);
startstop_right = load(['startstop_','1424','_SDR_final','.mat']); startstop_left = load(['startstop_','1424','_SDL_final','.mat']); 
% right
start_frame_r = round(startstop_right.start); 
if round(startstop_right.stop) > length(R_HIP_O{29,1})
   stop_frame_r = length(R_HIP_O{29,1});
else
   stop_frame_r = round(startstop_right.stop);
end
% left
start_frame_l = round(startstop_left.start);  
if round(startstop_left.stop) > length(R_HIP_O{28,1})
   stop_frame_l = length(R_HIP_O{28,1});
else
    stop_frame_l = round(startstop_left.stop);
end
% Trunk Flexion/Extension
set(0,'CurrentFigure',f21)
plot(normalize(TRNK_O{29,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(TRNK_O{28,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Felxion / extension [degrees]');         
% L/R Hip Felxion/Extension
set(0,'CurrentFigure',f22)
plot(normalize(R_HIP_O{29,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(L_HIP_O{28,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Felxion / extension [degrees]');   
% L/R Knee Felxion/Extension
set(0,'CurrentFigure',f23)
plot(normalize(R_KN_O{29,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(L_KN_O{28,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Felxion / extension [degrees]');
% L/R Ankle Plantar-/Dorsi-flexion
set(0,'CurrentFigure',f24)
plot(normalize(R_ANK_O{29,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(L_ANK_O{28,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Plantar- / dorsi-flexion [degrees]');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1913 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1913']);
load(['JA_','1913','.mat']);
startstop_right = load(['startstop_','1913','_SDR_final','.mat']); startstop_left = load(['startstop_','1913','_SDL_final','.mat']); 
% right side
start_frame_r = round(startstop_right.start);       
if round(startstop_right.stop) > length(R_HIP_O{28,1})
   stop_frame_r = length(R_HIP_O{28,1});
else
   stop_frame_r = round(startstop_right.stop);
end
% left side
start_frame_l = round(startstop_left.start);   
if round(startstop_left.stop) > length(R_HIP_O{27,1})
   stop_frame_l = length(R_HIP_O{27,1});
else
   stop_frame_l = round(startstop_left.stop);
end
% Trunk Flexion/Extension
set(0,'CurrentFigure',f21)
plot(normalize(TRNK_O{28,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(TRNK_O{27,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Felxion / extension [degrees]');        
% L/R Hip Felxion/Extension
set(0,'CurrentFigure',f22)
plot(normalize(R_HIP_O{28,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(L_HIP_O{27,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Felxion / extension [degrees]');
% L/R Knee Felxion/Extension
set(0,'CurrentFigure',f23)
plot(normalize(R_KN_O{28,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(L_KN_O{27,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Felxion / extension [degrees]');
% L/R Ankle Plantar-/Dorsi-flexion
set(0,'CurrentFigure',f24)
plot(normalize(R_ANK_O{28,1}(start_frame_r:stop_frame_r,1),100),'r'); hold on;
plot(normalize(L_ANK_O{27,1}(start_frame_l:stop_frame_l,1),100),'b'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Plantar- / dorsi-flexion [degrees]');   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% T-Balance Left/Right (use left indice to cut the right side)
f25 = figure; % trunk flexion/extension
f26 = figure; % trunk lateral flexion/extension
f27 = figure; % hip flexion/extension
f28 = figure; % knee flexion/extension
for p1 = 1:length(PPID)
    cd([parent_fld,'/',PPID{p1}]);
    load(['JA_',PPID{p1},'.mat']);
    startstop_right = load(['startstop_',PPID{p1},'_TBR_final','.mat']);  startstop_left = load(['startstop_',PPID{p1},'_TBL_final','.mat']);    
    % right
    start_frame_r = round(startstop_right.start); 
    if round(startstop_right.stop) > length(R_HIP_O{29,1})
       stop_frame_r = length(R_HIP_O{29,1});
    else
       stop_frame_r = round(startstop_right.stop);
    end    
    %left
    start_frame_l = round(startstop_left.start);  
    if round(startstop_left.stop) > length(R_HIP_O{28,1})
       stop_frame_l = length(R_HIP_O{28,1});
    else
        stop_frame_l = round(startstop_left.stop);
    end    
    % Trunk flexion/extension
    set(0,'CurrentFigure',f25)
    plot(normalize(TRNK_O{29,1}(start_frame_r:stop_frame_r,1),100),'b'); hold on;
    plot(normalize(TRNK_O{28,1}(start_frame_l:stop_frame_l,1),100),'r'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Felxion / extension [degrees]');          
    % Trunk lateral flexion/extension
    set(0,'CurrentFigure',f26)
    plot(normalize(TRNK_O{29,1}(start_frame_r:stop_frame_r,2),100),'b'); hold on;
    plot(normalize(TRNK_O{28,1}(start_frame_l:stop_frame_l,2),100),'r'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Lateral felxion / extension [degrees]');        
    % Hip flexion/extension
    set(0,'CurrentFigure',f27)
    plot(normalize(L_HIP_O{29,1}(start_frame_r:stop_frame_r,1),100),'b'); hold on;
    plot(normalize(R_HIP_O{28,1}(start_frame_l:stop_frame_l,1),100),'r'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Felxion / extension [degrees]');                  
    % Knee flexion/extension
    set(0,'CurrentFigure',f28)
    plot(normalize(L_KN_O{29,1}(start_frame_r:stop_frame_r,1),100),'b'); hold on;
    plot(normalize(R_KN_O{28,1}(start_frame_l:stop_frame_l,1),100),'r'); 
    xlim([0 100]);
    xlabel('Normalized time [frames]');
    ylabel('Felxion / extension [degrees]');          
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1424 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1424']);
load(['JA_','1424','.mat']);
startstop_right = load(['startstop_','1424','_TBR_final','.mat']); startstop_left = load(['startstop_','1424','_TBL_final','.mat']);  
% right
start_frame_r = round(startstop_right.start); 
if round(startstop_right.stop) > length(R_HIP_O{31,1})
   stop_frame_r = length(R_HIP_O{31,1});
else
   stop_frame_r = round(startstop_right.stop);
end
% left
start_frame_l = round(startstop_left.start);  
if round(startstop_left.stop) > length(R_HIP_O{30,1})
   stop_frame_l = length(R_HIP_O{30,1});
else
    stop_frame_l = round(startstop_left.stop);
end
% Trunk flexion/extension
set(0,'CurrentFigure',f25)
plot(normalize(TRNK_O{31,1}(start_frame_r:stop_frame_r,1),100),'b'); hold on;
plot(normalize(TRNK_O{30,1}(start_frame_l:stop_frame_l,1),100),'r'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Felxion / extension [degrees]');       
% Trunk lateral flexion/extension
set(0,'CurrentFigure',f26)
plot(normalize(TRNK_O{31,1}(start_frame_r:stop_frame_r,2),100),'b'); hold on;
plot(normalize(TRNK_O{30,1}(start_frame_l:stop_frame_l,2),100),'r'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Lateral felxion / extension [degrees]');     
% Hip flexion/extension
set(0,'CurrentFigure',f27)
plot(normalize(L_HIP_O{31,1}(start_frame_r:stop_frame_r,1),100),'b'); hold on;
plot(normalize(R_HIP_O{30,1}(start_frame_l:stop_frame_l,1),100),'r'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Felxion / extension [degrees]');              
% Knee flexion/extension
set(0,'CurrentFigure',f28)
plot(normalize(L_KN_O{31,1}(start_frame_r:stop_frame_r,1),100),'b'); hold on;
plot(normalize(R_KN_O{30,1}(start_frame_l:stop_frame_l,1),100),'r'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Felxion / extension [degrees]');          
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1913 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1913']);
load(['JA_','1913','.mat']);
startstop_right = load(['startstop_','1913','_TBR_final','.mat']);  startstop_left = load(['startstop_','1913','_TBL_final','.mat']); 
% right side
start_frame_r = round(startstop_right.start);   
if round(startstop_right.stop) > length(R_HIP_O{30,1})
   stop_frame_r = length(R_HIP_O{30,1});
else
   stop_frame_r = round(startstop_right.stop);
end
% left side
start_frame_l = round(startstop_left.start);   
if round(startstop_left.stop) > length(R_HIP_O{29,1})
   stop_frame_l = length(R_HIP_O{29,1});
else
   stop_frame_l = round(startstop_left.stop);
end
% Trunk flexion/extension
set(0,'CurrentFigure',f25)
plot(normalize(TRNK_O{30,1}(start_frame_r:stop_frame_r,1),100),'b'); hold on;
plot(normalize(TRNK_O{29,1}(start_frame_l:stop_frame_l,1),100),'r'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Felxion / extension [degrees]');     
% Trunk lateral flexion/extension
set(0,'CurrentFigure',f26)
plot(normalize(TRNK_O{30,1}(start_frame_r:stop_frame_r,2),100),'b'); hold on;
plot(normalize(TRNK_O{29,1}(start_frame_l:stop_frame_l,2),100),'r'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Lateral felxion / extension [degrees]');  
% Hip flexion/extension
set(0,'CurrentFigure',f27)
plot(normalize(L_HIP_O{30,1}(start_frame_r:stop_frame_r,1),100),'b'); hold on;
plot(normalize(R_HIP_O{29,1}(start_frame_l:stop_frame_l,1),100),'r'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Felxion / extension [degrees]');              
% Knee flexion/extension
set(0,'CurrentFigure',f28)
plot(normalize(L_KN_O{30,1}(start_frame_r:stop_frame_r,1),100),'b'); hold on;
plot(normalize(R_KN_O{29,1}(start_frame_l:stop_frame_l,1),100),'r'); 
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Felxion / extension [degrees]');      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%