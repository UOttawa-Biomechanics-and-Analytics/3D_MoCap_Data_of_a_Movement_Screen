close all;  clear all;  clc;
% used to validate the ROM of the selected joint angles.

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

%% Drop jump
ROM_Hip_FE_L = zeros(183,101);  ROM_Hip_FE_R = zeros(183,101);
ROM_Knee_FE_L = zeros(183,101); ROM_Knee_FE_R = zeros(183,101);
ROM_Tnk_FE = zeros(183,101); 
ROM_Ank_FE_L = zeros(183,101); ROM_Ank_FE_R = zeros(183,101);
for p1 = 1:length(PPID)
    cd([parent_fld,'/',PPID{p1}]);
    load(['JA_',PPID{p1},'.mat']);
    load(['startstop_',PPID{p1},'_DJ_final','.mat']); % load the start and stop point of the movement.
    start_frame = round(start);  stop_frame = round(stop);
    % L/R Hip Flexion/Extension
    ROM_Hip_FE_L(p1,:) = normalize(L_HIP_O{7,1}(start_frame:stop_frame,1),100);
    ROM_Hip_FE_R(p1,:) = normalize(R_HIP_O{7,1}(start_frame:stop_frame,1),100);
    % L/R Knee Flexion/Extension
    ROM_Knee_FE_L(p1,:) = normalize(L_KN_O{7,1}(start_frame:stop_frame,1),100);
    ROM_Knee_FE_R(p1,:) = normalize(R_KN_O{7,1}(start_frame:stop_frame,1),100);
    % Trunk Flexion/Extension
    ROM_Tnk_FE(p1,:) = normalize(TRNK_O{7,1}(start_frame:stop_frame,1),100);    
    % L/R Ankle Dorsi-/Plantar- flexion
    ROM_Ank_FE_L(p1,:) = normalize(L_ANK_O{7,1}(start_frame:stop_frame,1),100);
    ROM_Ank_FE_R(p1,:) = normalize(R_ANK_O{7,1}(start_frame:stop_frame,1),100);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1424 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1424']);
load(['JA_','1424','.mat']);
load(['startstop_','1424','_DJ_final','.mat']);
start_frame = round(start);  stop_frame = round(stop);
% L/R Hip Flexion/Extension
ROM_Hip_FE_L(182,:) = normalize(L_HIP_O{8,1}(start_frame:stop_frame,1),100);
ROM_Hip_FE_R(182,:) = normalize(R_HIP_O{8,1}(start_frame:stop_frame,1),100);
% L/R Knee Flexion/Extension
ROM_Knee_FE_L(182,:) = normalize(L_KN_O{8,1}(start_frame:stop_frame,1),100);
ROM_Knee_FE_R(182,:) = normalize(R_KN_O{8,1}(start_frame:stop_frame,1),100);
% Trunk Flexion/Extension
ROM_Tnk_FE(182,:) = normalize(TRNK_O{8,1}(start_frame:stop_frame,1),100);    
% L/R Ankle Dorsi-/Plantar- flexion
ROM_Ank_FE_L(182,:) = normalize(L_ANK_O{8,1}(start_frame:stop_frame,1),100);
ROM_Ank_FE_R(182,:) = normalize(R_ANK_O{8,1}(start_frame:stop_frame,1),100);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1913 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1913']);
load(['JA_','1913','.mat']);
load(['startstop_','1913','_DJ_final','.mat']); 
start_frame = round(start); stop_frame = round(stop);
% L/R Hip Flexion/Extension
ROM_Hip_FE_L(183,:) = normalize(L_HIP_O{8,1}(start_frame:stop_frame,1),100);
ROM_Hip_FE_R(183,:) = normalize(R_HIP_O{8,1}(start_frame:stop_frame,1),100);
% L/R Knee Flexion/Extension
ROM_Knee_FE_L(183,:) = normalize(L_KN_O{8,1}(start_frame:stop_frame,1),100);
ROM_Knee_FE_R(183,:) = normalize(R_KN_O{8,1}(start_frame:stop_frame,1),100);
% Trunk Flexion/Extension
ROM_Tnk_FE(183,:) = normalize(TRNK_O{8,1}(start_frame:stop_frame,1),100);    
% L/R Ankle Dorsi-/Plantar- flexion
ROM_Ank_FE_L(183,:) = normalize(L_ANK_O{8,1}(start_frame:stop_frame,1),100);
ROM_Ank_FE_R(183,:) = normalize(R_ANK_O{8,1}(start_frame:stop_frame,1),100);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mean SD
f1 = figure; % ankle plantar- dorsi- flexion
f2 = figure; % knee flexion/extension
f3 = figure; % hip flexion/extension
f4 = figure; % trunk flexion/extension
% L/R Ankle Plantar-/dorsi-flexion
Mean_Ank_FE_L = mean(ROM_Ank_FE_L); Std_Ank_FE_L = std(ROM_Ank_FE_L);
Mean_Ank_FE_R = mean(ROM_Ank_FE_R); Std_Ank_FE_R = std(ROM_Ank_FE_R);
set(0,'CurrentFigure',f1)
plot(ROM_Ank_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Ank_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Ank_FE_R,'r','LineWidth',2);
plot(Mean_Ank_FE_R+2*(Std_Ank_FE_R),'r--','LineWidth',2);plot(Mean_Ank_FE_R-2*(Std_Ank_FE_R),'r--','LineWidth',2);
plot(Mean_Ank_FE_L,'b','LineWidth',2);
plot(Mean_Ank_FE_L+2*(Std_Ank_FE_L),'b--','LineWidth',2);plot(Mean_Ank_FE_L-2*(Std_Ank_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Plantar- / dorsi-flexion [degrees]')    

% L/R Knee Flexion/Extension
Mean_Knee_FE_L = mean(ROM_Knee_FE_L); Std_Knee_FE_L = std(ROM_Knee_FE_L);
Mean_Knee_FE_R = mean(ROM_Knee_FE_R); Std_Knee_FE_R = std(ROM_Knee_FE_R);
set(0,'CurrentFigure',f2)
plot(ROM_Knee_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Knee_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Knee_FE_R,'r','LineWidth',2);
plot(Mean_Knee_FE_R+2*(Std_Knee_FE_R),'r--','LineWidth',2);plot(Mean_Knee_FE_R-2*(Std_Knee_FE_R),'r--','LineWidth',2);
plot(Mean_Knee_FE_L,'b','LineWidth',2);
plot(Mean_Knee_FE_L+2*(Std_Knee_FE_L),'b--','LineWidth',2);plot(Mean_Knee_FE_L-2*(Std_Knee_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');   

% L/R Hip Flexion/Extension
Mean_Hip_FE_L = mean(ROM_Hip_FE_L); Std_Hip_FE_L = std(ROM_Hip_FE_L);
Mean_Hip_FE_R = mean(ROM_Hip_FE_R); Std_Hip_FE_R = std(ROM_Hip_FE_R);
set(0,'CurrentFigure',f3)
plot(ROM_Hip_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Hip_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Hip_FE_R,'r','LineWidth',2);
plot(Mean_Hip_FE_R+2*(Std_Hip_FE_R),'r--','LineWidth',2);plot(Mean_Hip_FE_R-2*(Std_Hip_FE_R),'r--','LineWidth',2);
plot(Mean_Hip_FE_L,'b','LineWidth',2);
plot(Mean_Hip_FE_L+2*(Std_Hip_FE_L),'b--','LineWidth',2);plot(Mean_Hip_FE_L-2*(Std_Hip_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');   

% Trunk Flexion/Extension
Mean_Tnk_FE = mean(ROM_Tnk_FE); Std_Tnk_FE = std(ROM_Tnk_FE);
set(0,'CurrentFigure',f4)
plot(ROM_Tnk_FE','Color',[1 0 0 0.2]); hold on;
plot(Mean_Tnk_FE,'r','LineWidth',2);
plot(Mean_Tnk_FE+2*(Std_Tnk_FE),'r--','LineWidth',2);plot(Mean_Tnk_FE-2*(Std_Tnk_FE),'r--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');   

%% Hop Down Left/Right 
ROM_Hip_AB_L = zeros(183,101);  ROM_Hip_AB_R = zeros(183,101);
ROM_Knee_FE_L = zeros(183,101); ROM_Knee_FE_R = zeros(183,101);
ROM_Tnk_FE_L = zeros(183,101);  ROM_Tnk_FE_R = zeros(183,101); 
ROM_Ank_FE_L = zeros(183,101);  ROM_Ank_FE_R = zeros(183,101);
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
    ROM_Hip_AB_R(p1,:) = normalize(R_HIP_O{13,1}(start_frame_r:stop_frame_r,2),100);
    ROM_Hip_AB_L(p1,:) = normalize(L_HIP_O{12,1}(start_frame_l:stop_frame_l,2),100);   
    % L/R Knee Flexion/Extension
    ROM_Knee_FE_R(p1,:) = normalize(R_KN_O{13,1}(start_frame_r:stop_frame_r,1),100);
    ROM_Knee_FE_L(p1,:) = normalize(L_KN_O{12,1}(start_frame_l:stop_frame_l,1),100);
    % Trunk Flexion/Extension
    ROM_Tnk_FE_R(p1,:) = normalize(TRNK_O{13,1}(start_frame_r:stop_frame_r,1),100);
    ROM_Tnk_FE_L(p1,:) = normalize(TRNK_O{12,1}(start_frame_l:stop_frame_l,1),100);
    % L/R Ankle Dorsi-/Plantar- flexion
    ROM_Ank_FE_R(p1,:) = normalize(R_ANK_O{13,1}(start_frame_r:stop_frame_r,1),100);
    ROM_Ank_FE_L(p1,:) = normalize(L_ANK_O{12,1}(start_frame_l:stop_frame_l,1),100);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1424 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1424']);
load(['JA_','1424','.mat']);
startstop_right = load(['startstop_','1424','_HDR_final','.mat']);  startstop_left = load(['startstop_','1424','_HDL_final','.mat']); 
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
ROM_Hip_AB_R(182,:) = normalize(R_HIP_O{14,1}(start_frame_r:stop_frame_r,2),100);
ROM_Hip_AB_L(182,:) = normalize(L_HIP_O{13,1}(start_frame_l:stop_frame_l,2),100);   
% L/R Knee Flexion/Extension
ROM_Knee_FE_R(182,:) = normalize(R_KN_O{14,1}(start_frame_r:stop_frame_r,1),100);
ROM_Knee_FE_L(182,:) = normalize(L_KN_O{13,1}(start_frame_l:stop_frame_l,1),100);
% Trunk Flexion/Extension
ROM_Tnk_FE_R(182,:) = normalize(TRNK_O{14,1}(start_frame_r:stop_frame_r,1),100);
ROM_Tnk_FE_L(182,:) = normalize(TRNK_O{13,1}(start_frame_l:stop_frame_l,1),100);
% L/R Ankle Dorsi-/Plantar- flexion
ROM_Ank_FE_R(182,:) = normalize(R_ANK_O{14,1}(start_frame_r:stop_frame_r,1),100);
ROM_Ank_FE_L(182,:) = normalize(L_ANK_O{13,1}(start_frame_l:stop_frame_l,1),100);    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1913 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1913']);
load(['JA_','1913','.mat']);
startstop_right = load(['startstop_','1913','_HDR_final','.mat']);  startstop_left = load(['startstop_','1913','_HDL_final','.mat']); 
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
ROM_Hip_AB_R(183,:) = normalize(R_HIP_O{14,1}(start_frame_r:stop_frame_r,2),100);
ROM_Hip_AB_L(183,:) = normalize(L_HIP_O{13,1}(start_frame_l:stop_frame_l,2),100);   
% L/R Knee Flexion/Extension
ROM_Knee_FE_R(183,:) = normalize(R_KN_O{14,1}(start_frame_r:stop_frame_r,1),100);
ROM_Knee_FE_L(183,:) = normalize(L_KN_O{13,1}(start_frame_l:stop_frame_l,1),100);
% Trunk Flexion/Extension
ROM_Tnk_FE_R(183,:) = normalize(TRNK_O{14,1}(start_frame_r:stop_frame_r,1),100);
ROM_Tnk_FE_L(183,:) = normalize(TRNK_O{13,1}(start_frame_l:stop_frame_l,1),100);
% L/R Ankle Dorsi-/Plantar- flexion
ROM_Ank_FE_R(183,:) = normalize(R_ANK_O{14,1}(start_frame_r:stop_frame_r,1),100);
ROM_Ank_FE_L(183,:) = normalize(L_ANK_O{13,1}(start_frame_l:stop_frame_l,1),100);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mean SD
f5 = figure; % ankle plantar- dorsi- flexion
f6 = figure; % knee flexion/extension
f7 = figure; % hip adduction/abduction
f8 = figure; % trunk flexion/extension
% L/R Ankle Plantar-/dorsi-flexion
Mean_Ank_FE_L = mean(ROM_Ank_FE_L); Std_Ank_FE_L = std(ROM_Ank_FE_L);
Mean_Ank_FE_R = mean(ROM_Ank_FE_R); Std_Ank_FE_R = std(ROM_Ank_FE_R);
set(0,'CurrentFigure',f5)
plot(ROM_Ank_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Ank_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Ank_FE_R,'r','LineWidth',2);
plot(Mean_Ank_FE_R+2*(Std_Ank_FE_R),'r--','LineWidth',2);plot(Mean_Ank_FE_R-2*(Std_Ank_FE_R),'r--','LineWidth',2);
plot(Mean_Ank_FE_L,'b','LineWidth',2);
plot(Mean_Ank_FE_L+2*(Std_Ank_FE_L),'b--','LineWidth',2);plot(Mean_Ank_FE_L-2*(Std_Ank_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Plantar- / dorsi-flexion [degrees]')    

% L/R Knee Flexion/Extension
Mean_Knee_FE_L = mean(ROM_Knee_FE_L); Std_Knee_FE_L = std(ROM_Knee_FE_L);
Mean_Knee_FE_R = mean(ROM_Knee_FE_R); Std_Knee_FE_R = std(ROM_Knee_FE_R);
set(0,'CurrentFigure',f6)
plot(ROM_Knee_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Knee_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Knee_FE_R,'r','LineWidth',2);
plot(Mean_Knee_FE_R+2*(Std_Knee_FE_R),'r--','LineWidth',2);plot(Mean_Knee_FE_R-2*(Std_Knee_FE_R),'r--','LineWidth',2);
plot(Mean_Knee_FE_L,'b','LineWidth',2);
plot(Mean_Knee_FE_L+2*(Std_Knee_FE_L),'b--','LineWidth',2);plot(Mean_Knee_FE_L-2*(Std_Knee_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');   

% L/R Hip Adduction/Abduction
Mean_Hip_AB_L = mean(ROM_Hip_AB_L); Std_Hip_AB_L = std(ROM_Hip_AB_L);
Mean_Hip_AB_R = mean(ROM_Hip_AB_R); Std_Hip_AB_R = std(ROM_Hip_AB_R);
set(0,'CurrentFigure',f7)
plot(ROM_Hip_AB_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Hip_AB_L','Color',[0 0 1 0.2]);
plot(Mean_Hip_AB_R,'r','LineWidth',2);
plot(Mean_Hip_AB_R+2*(Std_Hip_AB_R),'r--','LineWidth',2);plot(Mean_Hip_AB_R-2*(Std_Hip_AB_R),'r--','LineWidth',2);
plot(Mean_Hip_AB_L,'b','LineWidth',2);
plot(Mean_Hip_AB_L+2*(Std_Hip_AB_L),'b--','LineWidth',2);plot(Mean_Hip_AB_L-2*(Std_Hip_AB_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Adduction / abduction [degrees]');     

% Trunk Flexion/Extension
Mean_Tnk_FE_L = mean(ROM_Tnk_FE_L); Std_Tnk_FE_L = std(ROM_Tnk_FE_L);
Mean_Tnk_FE_R = mean(ROM_Tnk_FE_R); Std_Tnk_FE_R = std(ROM_Tnk_FE_R);
set(0,'CurrentFigure',f8)
plot(ROM_Tnk_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Tnk_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Tnk_FE_R,'r','LineWidth',2);
plot(Mean_Tnk_FE_R+2*(Std_Tnk_FE_R),'r--','LineWidth',2);plot(Mean_Tnk_FE_R-2*(Std_Tnk_FE_R),'r--','LineWidth',2);
plot(Mean_Tnk_FE_L,'b','LineWidth',2);
plot(Mean_Tnk_FE_L+2*(Std_Tnk_FE_L),'b--','LineWidth',2);plot(Mean_Tnk_FE_L-2*(Std_Tnk_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');   

%% L-Hop Left and Right: 
ROM_Hip_AB_L = zeros(183,101);  ROM_Hip_AB_R = zeros(183,101);
ROM_Knee_FE_L = zeros(183,101); ROM_Knee_FE_R = zeros(183,101);
ROM_Tnk_FE_L = zeros(183,101);  ROM_Tnk_FE_R = zeros(183,101); 
ROM_Ank_FE_L = zeros(183,101);  ROM_Ank_FE_R = zeros(183,101);
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
    % L/R Hip Adduction/Abduction
    ROM_Hip_AB_R(p1,:) = normalize(R_HIP_O{15,1}(start_frame_r:stop_frame_r,2),100);
    ROM_Hip_AB_L(p1,:) = normalize(L_HIP_O{14,1}(start_frame_l:stop_frame_l,2),100);   
    % L/R Knee Flexion/Extension
    ROM_Knee_FE_R(p1,:) = normalize(R_KN_O{15,1}(start_frame_r:stop_frame_r,1),100);
    ROM_Knee_FE_L(p1,:) = normalize(L_KN_O{14,1}(start_frame_l:stop_frame_l,1),100);
    % Trunk Flexion/Extension
    ROM_Tnk_FE_R(p1,:) = normalize(TRNK_O{15,1}(start_frame_r:stop_frame_r,1),100);
    ROM_Tnk_FE_L(p1,:) = normalize(TRNK_O{14,1}(start_frame_l:stop_frame_l,1),100);
    % L/R Ankle Dorsi-/Plantar- flexion
    ROM_Ank_FE_R(p1,:) = normalize(R_ANK_O{15,1}(start_frame_r:stop_frame_r,1),100);
    ROM_Ank_FE_L(p1,:) = normalize(L_ANK_O{14,1}(start_frame_l:stop_frame_l,1),100);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1424 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1424']);
load(['JA_','1424','.mat']);
startstop_right = load(['startstop_','1424','_LHR_final','.mat']);  startstop_left = load(['startstop_','1424','_LHL_final','.mat']); 
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
% L/R Hip Adduction/Abduction
ROM_Hip_AB_R(182,:) = normalize(R_HIP_O{16,1}(start_frame_r:stop_frame_r,2),100);
ROM_Hip_AB_L(182,:) = normalize(L_HIP_O{15,1}(start_frame_l:stop_frame_l,2),100);   
% L/R Knee Flexion/Extension
ROM_Knee_FE_R(182,:) = normalize(R_KN_O{16,1}(start_frame_r:stop_frame_r,1),100);
ROM_Knee_FE_L(182,:) = normalize(L_KN_O{15,1}(start_frame_l:stop_frame_l,1),100);
% Trunk Flexion/Extension
ROM_Tnk_FE_R(182,:) = normalize(TRNK_O{16,1}(start_frame_r:stop_frame_r,1),100);
ROM_Tnk_FE_L(182,:) = normalize(TRNK_O{15,1}(start_frame_l:stop_frame_l,1),100);
% L/R Ankle Dorsi-/Plantar- flexion
ROM_Ank_FE_R(182,:) = normalize(R_ANK_O{16,1}(start_frame_r:stop_frame_r,1),100);
ROM_Ank_FE_L(182,:) = normalize(L_ANK_O{15,1}(start_frame_l:stop_frame_l,1),100); 
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
% L/R Hip Adduction/Abduction
ROM_Hip_AB_R(183,:) = normalize(R_HIP_O{16,1}(start_frame_r:stop_frame_r,2),100);
ROM_Hip_AB_L(183,:) = normalize(L_HIP_O{15,1}(start_frame_l:stop_frame_l,2),100);   
% L/R Knee Flexion/Extension
ROM_Knee_FE_R(183,:) = normalize(R_KN_O{16,1}(start_frame_r:stop_frame_r,1),100);
ROM_Knee_FE_L(183,:) = normalize(L_KN_O{15,1}(start_frame_l:stop_frame_l,1),100);
% Trunk Flexion/Extension
ROM_Tnk_FE_R(183,:) = normalize(TRNK_O{16,1}(start_frame_r:stop_frame_r,1),100);
ROM_Tnk_FE_L(183,:) = normalize(TRNK_O{15,1}(start_frame_l:stop_frame_l,1),100);
% L/R Ankle Dorsi-/Plantar- flexion
ROM_Ank_FE_R(183,:) = normalize(R_ANK_O{16,1}(start_frame_r:stop_frame_r,1),100);
ROM_Ank_FE_L(183,:) = normalize(L_ANK_O{15,1}(start_frame_l:stop_frame_l,1),100);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mean SD
f9 = figure; % ankle plantar- dorsi- flexion
f10 = figure; % knee flexion/extension
f11 = figure; % hip adduction/abduction
f12 = figure; % trunk flexion/extension
% L/R Ankle Plantar-/dorsi-flexion
Mean_Ank_FE_L = mean(ROM_Ank_FE_L); Std_Ank_FE_L = std(ROM_Ank_FE_L);
Mean_Ank_FE_R = mean(ROM_Ank_FE_R); Std_Ank_FE_R = std(ROM_Ank_FE_R);
set(0,'CurrentFigure',f9)
plot(ROM_Ank_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Ank_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Ank_FE_R,'r','LineWidth',2);
plot(Mean_Ank_FE_R+2*(Std_Ank_FE_R),'r--','LineWidth',2);plot(Mean_Ank_FE_R-2*(Std_Ank_FE_R),'r--','LineWidth',2);
plot(Mean_Ank_FE_L,'b','LineWidth',2);
plot(Mean_Ank_FE_L+2*(Std_Ank_FE_L),'b--','LineWidth',2);plot(Mean_Ank_FE_L-2*(Std_Ank_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Plantar- / dorsi-flexion [degrees]')    

% L/R Knee Flexion/Extension
Mean_Knee_FE_L = mean(ROM_Knee_FE_L); Std_Knee_FE_L = std(ROM_Knee_FE_L);
Mean_Knee_FE_R = mean(ROM_Knee_FE_R); Std_Knee_FE_R = std(ROM_Knee_FE_R);
set(0,'CurrentFigure',f10)
plot(ROM_Knee_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Knee_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Knee_FE_R,'r','LineWidth',2);
plot(Mean_Knee_FE_R+2*(Std_Knee_FE_R),'r--','LineWidth',2);plot(Mean_Knee_FE_R-2*(Std_Knee_FE_R),'r--','LineWidth',2);
plot(Mean_Knee_FE_L,'b','LineWidth',2);
plot(Mean_Knee_FE_L+2*(Std_Knee_FE_L),'b--','LineWidth',2);plot(Mean_Knee_FE_L-2*(Std_Knee_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');   

% L/R Hip Adduction/Abduction
Mean_Hip_AB_L = mean(ROM_Hip_AB_L); Std_Hip_AB_L = std(ROM_Hip_AB_L);
Mean_Hip_AB_R = mean(ROM_Hip_AB_R); Std_Hip_AB_R = std(ROM_Hip_AB_R);
set(0,'CurrentFigure',f11)
plot(ROM_Hip_AB_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Hip_AB_L','Color',[0 0 1 0.2]);
plot(Mean_Hip_AB_R,'r','LineWidth',2);
plot(Mean_Hip_AB_R+2*(Std_Hip_AB_R),'r--','LineWidth',2);plot(Mean_Hip_AB_R-2*(Std_Hip_AB_R),'r--','LineWidth',2);
plot(Mean_Hip_AB_L,'b','LineWidth',2);
plot(Mean_Hip_AB_L+2*(Std_Hip_AB_L),'b--','LineWidth',2);plot(Mean_Hip_AB_L-2*(Std_Hip_AB_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Adduction / abduction [degrees]');     

% Trunk Flexion/Extension
Mean_Tnk_FE_L = mean(ROM_Tnk_FE_L); Std_Tnk_FE_L = std(ROM_Tnk_FE_L);
Mean_Tnk_FE_R = mean(ROM_Tnk_FE_R); Std_Tnk_FE_R = std(ROM_Tnk_FE_R);
set(0,'CurrentFigure',f12)
plot(ROM_Tnk_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Tnk_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Tnk_FE_R,'r','LineWidth',2);
plot(Mean_Tnk_FE_R+2*(Std_Tnk_FE_R),'r--','LineWidth',2);plot(Mean_Tnk_FE_R-2*(Std_Tnk_FE_R),'r--','LineWidth',2);
plot(Mean_Tnk_FE_L,'b','LineWidth',2);
plot(Mean_Tnk_FE_L+2*(Std_Tnk_FE_L),'b--','LineWidth',2);plot(Mean_Tnk_FE_L-2*(Std_Tnk_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]'); 

%% Lunge Left/Right
ROM_Hip_FE_L = zeros(183,101);  ROM_Hip_FE_R = zeros(183,101);
ROM_Knee_FE_L = zeros(183,101); ROM_Knee_FE_R = zeros(183,101);
ROM_Tnk_FE_L = zeros(183,101);  ROM_Tnk_FE_R = zeros(183,101); 
ROM_Ank_FE_L = zeros(183,101);  ROM_Ank_FE_R = zeros(183,101);
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
    % L/R Hip Flexion/Extension
    ROM_Hip_FE_R(p1,:) = normalize(R_HIP_O{17,1}(start_frame_r:stop_frame_r,1),100);
    ROM_Hip_FE_L(p1,:) = normalize(L_HIP_O{16,1}(start_frame_l:stop_frame_l,1),100);   
    % L/R Knee Flexion/Extension
    ROM_Knee_FE_R(p1,:) = normalize(R_KN_O{17,1}(start_frame_r:stop_frame_r,1),100);
    ROM_Knee_FE_L(p1,:) = normalize(L_KN_O{16,1}(start_frame_l:stop_frame_l,1),100);
    % Trunk Flexion/Extension
    ROM_Tnk_FE_R(p1,:) = normalize(TRNK_O{17,1}(start_frame_r:stop_frame_r,1),100);
    ROM_Tnk_FE_L(p1,:) = normalize(TRNK_O{16,1}(start_frame_l:stop_frame_l,1),100);
    % L/R Ankle Dorsi-/Plantar- flexion
    ROM_Ank_FE_R(p1,:) = normalize(R_ANK_O{17,1}(start_frame_r:stop_frame_r,1),100);
    ROM_Ank_FE_L(p1,:) = normalize(L_ANK_O{16,1}(start_frame_l:stop_frame_l,1),100);
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
% L/R Hip Flexion/Extension
ROM_Hip_FE_R(182,:) = normalize(R_HIP_O{18,1}(start_frame_r:stop_frame_r,1),100);
ROM_Hip_FE_L(182,:) = normalize(L_HIP_O{17,1}(start_frame_l:stop_frame_l,1),100);   
% L/R Knee Flexion/Extension
ROM_Knee_FE_R(182,:) = normalize(R_KN_O{18,1}(start_frame_r:stop_frame_r,1),100);
ROM_Knee_FE_L(182,:) = normalize(L_KN_O{17,1}(start_frame_l:stop_frame_l,1),100);
% Trunk Flexion/Extension
ROM_Tnk_FE_R(182,:) = normalize(TRNK_O{18,1}(start_frame_r:stop_frame_r,1),100);
ROM_Tnk_FE_L(182,:) = normalize(TRNK_O{17,1}(start_frame_l:stop_frame_l,1),100);
% L/R Ankle Dorsi-/Plantar- flexion
ROM_Ank_FE_R(182,:) = normalize(R_ANK_O{18,1}(start_frame_r:stop_frame_r,1),100);
ROM_Ank_FE_L(182,:) = normalize(L_ANK_O{17,1}(start_frame_l:stop_frame_l,1),100); 
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
% L/R Hip Flexion/Extension
ROM_Hip_FE_R(183,:) = normalize(R_HIP_O{18,1}(start_frame_r:stop_frame_r,1),100);
ROM_Hip_FE_L(183,:) = normalize(L_HIP_O{17,1}(start_frame_l:stop_frame_l,1),100);   
% L/R Knee Flexion/Extension
ROM_Knee_FE_R(183,:) = normalize(R_KN_O{18,1}(start_frame_r:stop_frame_r,1),100);
ROM_Knee_FE_L(183,:) = normalize(L_KN_O{17,1}(start_frame_l:stop_frame_l,1),100);
% Trunk Flexion/Extension
ROM_Tnk_FE_R(183,:) = normalize(TRNK_O{18,1}(start_frame_r:stop_frame_r,1),100);
ROM_Tnk_FE_L(183,:) = normalize(TRNK_O{17,1}(start_frame_l:stop_frame_l,1),100);
% L/R Ankle Dorsi-/Plantar- flexion
ROM_Ank_FE_R(183,:) = normalize(R_ANK_O{18,1}(start_frame_r:stop_frame_r,1),100);
ROM_Ank_FE_L(183,:) = normalize(L_ANK_O{17,1}(start_frame_l:stop_frame_l,1),100);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mean SD
f13 = figure; % ankle plantar- dorsi- flexion
f14 = figure; % knee flexion/extension
f15 = figure; % hip flexion/extension
f16 = figure; % trunk flexion/extension
% L/R Ankle Plantar-/dorsi-flexion
Mean_Ank_FE_L = mean(ROM_Ank_FE_L); Std_Ank_FE_L = std(ROM_Ank_FE_L);
Mean_Ank_FE_R = mean(ROM_Ank_FE_R); Std_Ank_FE_R = std(ROM_Ank_FE_R);
set(0,'CurrentFigure',f13)
plot(ROM_Ank_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Ank_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Ank_FE_R,'r','LineWidth',2);
plot(Mean_Ank_FE_R+2*(Std_Ank_FE_R),'r--','LineWidth',2);plot(Mean_Ank_FE_R-2*(Std_Ank_FE_R),'r--','LineWidth',2);
plot(Mean_Ank_FE_L,'b','LineWidth',2);
plot(Mean_Ank_FE_L+2*(Std_Ank_FE_L),'b--','LineWidth',2);plot(Mean_Ank_FE_L-2*(Std_Ank_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Plantar- / dorsi-flexion [degrees]')    

% L/R Knee Flexion/Extension
Mean_Knee_FE_L = mean(ROM_Knee_FE_L); Std_Knee_FE_L = std(ROM_Knee_FE_L);
Mean_Knee_FE_R = mean(ROM_Knee_FE_R); Std_Knee_FE_R = std(ROM_Knee_FE_R);
set(0,'CurrentFigure',f14)
plot(ROM_Knee_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Knee_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Knee_FE_R,'r','LineWidth',2);
plot(Mean_Knee_FE_R+2*(Std_Knee_FE_R),'r--','LineWidth',2);plot(Mean_Knee_FE_R-2*(Std_Knee_FE_R),'r--','LineWidth',2);
plot(Mean_Knee_FE_L,'b','LineWidth',2);
plot(Mean_Knee_FE_L+2*(Std_Knee_FE_L),'b--','LineWidth',2);plot(Mean_Knee_FE_L-2*(Std_Knee_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');   

% L/R Hip Flexion/Extension
Mean_Hip_FE_L = mean(ROM_Hip_FE_L); Std_Hip_FE_L = std(ROM_Hip_FE_L);
Mean_Hip_FE_R = mean(ROM_Hip_FE_R); Std_Hip_FE_R = std(ROM_Hip_FE_R);
set(0,'CurrentFigure',f15)
plot(ROM_Hip_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Hip_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Hip_FE_R,'r','LineWidth',2);
plot(Mean_Hip_FE_R+2*(Std_Hip_FE_R),'r--','LineWidth',2);plot(Mean_Hip_FE_R-2*(Std_Hip_FE_R),'r--','LineWidth',2);
plot(Mean_Hip_FE_L,'b','LineWidth',2);
plot(Mean_Hip_FE_L+2*(Std_Hip_FE_L),'b--','LineWidth',2);plot(Mean_Hip_FE_L-2*(Std_Hip_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');   

% Trunk Flexion/Extension
Mean_Tnk_FE_L = mean(ROM_Tnk_FE_L); Std_Tnk_FE_L = std(ROM_Tnk_FE_L);
Mean_Tnk_FE_R = mean(ROM_Tnk_FE_R); Std_Tnk_FE_R = std(ROM_Tnk_FE_R);
set(0,'CurrentFigure',f16)
plot(ROM_Tnk_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Tnk_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Tnk_FE_R,'r','LineWidth',2);
plot(Mean_Tnk_FE_R+2*(Std_Tnk_FE_R),'r--','LineWidth',2);plot(Mean_Tnk_FE_R-2*(Std_Tnk_FE_R),'r--','LineWidth',2);
plot(Mean_Tnk_FE_L,'b','LineWidth',2);
plot(Mean_Tnk_FE_L+2*(Std_Tnk_FE_L),'b--','LineWidth',2);plot(Mean_Tnk_FE_L-2*(Std_Tnk_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]'); 

%% Rotary Stability Left/Right  
ROM_Hip_FE_L = zeros(183,101);  ROM_Hip_FE_R = zeros(183,101);
ROM_Knee_FE_L = zeros(183,101); ROM_Knee_FE_R = zeros(183,101);
ROM_Tnk_ML_L = zeros(183,101);  ROM_Tnk_ML_R = zeros(183,101); 
ROM_Tnk_FE_L = zeros(183,101);  ROM_Tnk_FE_R = zeros(183,101); 
for p1 = 1:length(PPID)
    cd([parent_fld,'/',PPID{p1}]);
    load(['JA_',PPID{p1},'.mat']);
    startstop_right = load(['startstop_',PPID{p1},'_RSR_final','.mat']); startstop_left = load(['startstop_',PPID{p1},'_RSL_final','.mat']);
    start_frame_r = round(startstop_right.start); 
    if round(startstop_right.stop) > length(TRNK_O{19,1})
       stop_frame_r = length(TRNK_O{19,1});
    else
       stop_frame_r = round(startstop_right.stop);
    end
    
    start_frame_l = round(startstop_left.start); 
    if round(startstop_left.stop) > length(TRNK_O{18,1})
       stop_frame_l = length(TRNK_O{18,1});
    else
       stop_frame_l = round(startstop_left.stop);
    end    
    % Trunk flexion/extension
    ROM_Tnk_FE_R(p1,:) = normalize(TRNK_O{19,1}(start_frame_r:stop_frame_r,1),100);
    ROM_Tnk_FE_L(p1,:) = normalize(TRNK_O{18,1}(start_frame_l:stop_frame_l,1),100);     
    % Trunk lateral bending
    ROM_Tnk_ML_R(p1,:) = normalize(TRNK_O{19,1}(start_frame_r:stop_frame_r,2),100);
    ROM_Tnk_ML_L(p1,:) = normalize(TRNK_O{18,1}(start_frame_l:stop_frame_l,2),100); 
    % Hip flexion/extension
    ROM_Hip_FE_R(p1,:) = normalize(L_HIP_O{19,1}(start_frame_r:stop_frame_r,1),100);
    ROM_Hip_FE_L(p1,:) = normalize(R_HIP_O{18,1}(start_frame_l:stop_frame_l,1),100);    
    % Knee flexion/extension
    ROM_Knee_FE_R(p1,:) = normalize(L_KN_O{19,1}(start_frame_r:stop_frame_r,1),100); 
    ROM_Knee_FE_L(p1,:) = normalize(R_KN_O{18,1}(start_frame_l:stop_frame_l,1),100); 
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1424 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1424']);
load(['JA_','1424','.mat']);
startstop_right = load(['startstop_','1424','_RSR_final','.mat']); startstop_left = load(['startstop_','1424','_RSL_final','.mat']); 
start_frame_r = round(startstop_right.start); stop_frame_r = round(startstop_right.stop); start_frame_l = round(startstop_left.start); stop_frame_l = round(startstop_left.stop);  
% Trunk flexion/extension
ROM_Tnk_FE_R(182,:) = normalize(TRNK_O{20,1}(start_frame_r:stop_frame_r,1),100);
ROM_Tnk_FE_L(182,:) = normalize(TRNK_O{19,1}(start_frame_l:stop_frame_l,1),100);     
% Trunk lateral bending
ROM_Tnk_ML_R(182,:) = normalize(TRNK_O{20,1}(start_frame_r:stop_frame_r,2),100);
ROM_Tnk_ML_L(182,:) = normalize(TRNK_O{19,1}(start_frame_l:stop_frame_l,2),100); 
% Hip flexion/extension
ROM_Hip_FE_R(182,:) = normalize(L_HIP_O{20,1}(start_frame_r:stop_frame_r,1),100);
ROM_Hip_FE_L(182,:) = normalize(R_HIP_O{19,1}(start_frame_l:stop_frame_l,1),100);    
% Knee flexion/extension
ROM_Knee_FE_R(182,:) = normalize(L_KN_O{20,1}(start_frame_r:stop_frame_r,1),100); 
ROM_Knee_FE_L(182,:) = normalize(R_KN_O{19,1}(start_frame_l:stop_frame_l,1),100); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1913 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1913']);
load(['JA_','1913','.mat']);
startstop_right = load(['startstop_','1913','_RSR_final','.mat']); 
startstop_left = load(['startstop_','1913','_RSL_final','.mat']);
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
ROM_Tnk_FE_R(183,:) = normalize(TRNK_O{20,1}(start_frame_r:stop_frame_r,1),100);
ROM_Tnk_FE_L(183,:) = normalize(TRNK_O{19,1}(start_frame_l:stop_frame_l,1),100);     
% Trunk lateral bending
ROM_Tnk_ML_R(183,:) = normalize(TRNK_O{20,1}(start_frame_r:stop_frame_r,2),100);
ROM_Tnk_ML_L(183,:) = normalize(TRNK_O{19,1}(start_frame_l:stop_frame_l,2),100); 
% Hip flexion/extension
ROM_Hip_FE_R(183,:) = normalize(L_HIP_O{20,1}(start_frame_r:stop_frame_r,1),100);
ROM_Hip_FE_L(183,:) = normalize(R_HIP_O{19,1}(start_frame_l:stop_frame_l,1),100);    
% Knee flexion/extension
ROM_Knee_FE_R(183,:) = normalize(L_KN_O{20,1}(start_frame_r:stop_frame_r,1),100); 
ROM_Knee_FE_L(183,:) = normalize(R_KN_O{19,1}(start_frame_l:stop_frame_l,1),100); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mean SD
f17 = figure; % knee flexion/extension
f18 = figure; % hip flexion/extension
f19 = figure; % trunk flexion/extension
f20 = figure; % trunk lateral bending
% L/R Knee Flexion/Extension
Mean_Knee_FE_L = mean(ROM_Knee_FE_L); Std_Knee_FE_L = std(ROM_Knee_FE_L);
Mean_Knee_FE_R = mean(ROM_Knee_FE_R); Std_Knee_FE_R = std(ROM_Knee_FE_R);
set(0,'CurrentFigure',f17)
plot(ROM_Knee_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Knee_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Knee_FE_R,'r','LineWidth',2);
plot(Mean_Knee_FE_R+2*(Std_Knee_FE_R),'r--','LineWidth',2);plot(Mean_Knee_FE_R-2*(Std_Knee_FE_R),'r--','LineWidth',2);
plot(Mean_Knee_FE_L,'b','LineWidth',2);
plot(Mean_Knee_FE_L+2*(Std_Knee_FE_L),'b--','LineWidth',2);plot(Mean_Knee_FE_L-2*(Std_Knee_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');   

% L/R Hip Flexion/Extension
Mean_Hip_FE_L = mean(ROM_Hip_FE_L); Std_Hip_FE_L = std(ROM_Hip_FE_L);
Mean_Hip_FE_R = mean(ROM_Hip_FE_R); Std_Hip_FE_R = std(ROM_Hip_FE_R);
set(0,'CurrentFigure',f18)
plot(ROM_Hip_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Hip_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Hip_FE_R,'r','LineWidth',2);
plot(Mean_Hip_FE_R+2*(Std_Hip_FE_R),'r--','LineWidth',2);plot(Mean_Hip_FE_R-2*(Std_Hip_FE_R),'r--','LineWidth',2);
plot(Mean_Hip_FE_L,'b','LineWidth',2);
plot(Mean_Hip_FE_L+2*(Std_Hip_FE_L),'b--','LineWidth',2);plot(Mean_Hip_FE_L-2*(Std_Hip_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');   

% Trunk Flexion/Extension
Mean_Tnk_FE_L = mean(ROM_Tnk_FE_L); Std_Tnk_FE_L = std(ROM_Tnk_FE_L);
Mean_Tnk_FE_R = mean(ROM_Tnk_FE_R); Std_Tnk_FE_R = std(ROM_Tnk_FE_R);
set(0,'CurrentFigure',f19)
plot(ROM_Tnk_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Tnk_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Tnk_FE_R,'r','LineWidth',2);
plot(Mean_Tnk_FE_R+2*(Std_Tnk_FE_R),'r--','LineWidth',2);plot(Mean_Tnk_FE_R-2*(Std_Tnk_FE_R),'r--','LineWidth',2);
plot(Mean_Tnk_FE_L,'b','LineWidth',2);
plot(Mean_Tnk_FE_L+2*(Std_Tnk_FE_L),'b--','LineWidth',2);plot(Mean_Tnk_FE_L-2*(Std_Tnk_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]'); 

% Trunk lateral bending
Mean_Tnk_ML_L = mean(ROM_Tnk_ML_L); Std_Tnk_ML_L = std(ROM_Tnk_ML_L);
Mean_Tnk_ML_R = mean(ROM_Tnk_ML_R); Std_Tnk_ML_R = std(ROM_Tnk_ML_R);
set(0,'CurrentFigure',f20)
plot(ROM_Tnk_ML_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Tnk_ML_L','Color',[0 0 1 0.2]);
plot(Mean_Tnk_ML_R,'r','LineWidth',2);
plot(Mean_Tnk_ML_R+2*(Std_Tnk_ML_R),'r--','LineWidth',2);plot(Mean_Tnk_ML_R-2*(Std_Tnk_ML_R),'r--','LineWidth',2);
plot(Mean_Tnk_ML_L,'b','LineWidth',2);
plot(Mean_Tnk_ML_L+2*(Std_Tnk_ML_L),'b--','LineWidth',2);plot(Mean_Tnk_ML_L-2*(Std_Tnk_ML_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Lateral flexion / extension [degrees]');  

%% Step Down Left/Right
ROM_Hip_FE_L = zeros(183,101);  ROM_Hip_FE_R = zeros(183,101);
ROM_Knee_FE_L = zeros(183,101); ROM_Knee_FE_R = zeros(183,101);
ROM_Tnk_FE_L = zeros(183,101);  ROM_Tnk_FE_R = zeros(183,101); 
ROM_Ank_FE_L = zeros(183,101);  ROM_Ank_FE_R = zeros(183,101);
for p1 = 1:length(PPID)
    cd([parent_fld,'/',PPID{p1}]);
    load(['JA_',PPID{p1},'.mat']);
    startstop_right = load(['startstop_',PPID{p1},'_SDR_final','.mat']); startstop_left = load(['startstop_',PPID{p1},'_SDL_final','.mat']);     
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
    ROM_Tnk_FE_R(p1,:) = normalize(TRNK_O{27,1}(start_frame_r:stop_frame_r,1),100);
    ROM_Tnk_FE_L(p1,:) = normalize(TRNK_O{26,1}(start_frame_l:stop_frame_l,1),100);              
    % L/R Hip Felxion/Extension
    ROM_Hip_FE_R(p1,:) = normalize(R_HIP_O{27,1}(start_frame_r:stop_frame_r,1),100);
    ROM_Hip_FE_L(p1,:) = normalize(L_HIP_O{26,1}(start_frame_l:stop_frame_l,1),100);       
    % L/R Knee Felxion/Extension
    ROM_Knee_FE_R(p1,:) = normalize(R_KN_O{27,1}(start_frame_r:stop_frame_r,1),100);
    ROM_Knee_FE_L(p1,:) = normalize(L_KN_O{26,1}(start_frame_l:stop_frame_l,1),100); 
    % L/R Ankle Plantar-/Dorsi-flexion
    ROM_Ank_FE_R(p1,:) = normalize(R_ANK_O{27,1}(start_frame_r:stop_frame_r,1),100);
    ROM_Ank_FE_L(p1,:) = normalize(L_ANK_O{26,1}(start_frame_l:stop_frame_l,1),100);
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
ROM_Tnk_FE_R(182,:) = normalize(TRNK_O{29,1}(start_frame_r:stop_frame_r,1),100);
ROM_Tnk_FE_L(182,:) = normalize(TRNK_O{28,1}(start_frame_l:stop_frame_l,1),100);              
% L/R Hip Felxion/Extension
ROM_Hip_FE_R(182,:) = normalize(R_HIP_O{29,1}(start_frame_r:stop_frame_r,1),100);
ROM_Hip_FE_L(182,:) = normalize(L_HIP_O{28,1}(start_frame_l:stop_frame_l,1),100);       
% L/R Knee Felxion/Extension
ROM_Knee_FE_R(182,:) = normalize(R_KN_O{29,1}(start_frame_r:stop_frame_r,1),100);
ROM_Knee_FE_L(182,:) = normalize(L_KN_O{28,1}(start_frame_l:stop_frame_l,1),100); 
% L/R Ankle Plantar-/Dorsi-flexion
ROM_Ank_FE_R(182,:) = normalize(R_ANK_O{29,1}(start_frame_r:stop_frame_r,1),100);
ROM_Ank_FE_L(182,:) = normalize(L_ANK_O{28,1}(start_frame_l:stop_frame_l,1),100);
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
ROM_Tnk_FE_R(183,:) = normalize(TRNK_O{28}(start_frame_r:stop_frame_r,1),100);
ROM_Tnk_FE_L(183,:) = normalize(TRNK_O{27,1}(start_frame_l:stop_frame_l,1),100);              
% L/R Hip Felxion/Extension
ROM_Hip_FE_R(183,:) = normalize(R_HIP_O{28,1}(start_frame_r:stop_frame_r,1),100);
ROM_Hip_FE_L(183,:) = normalize(L_HIP_O{27,1}(start_frame_l:stop_frame_l,1),100);       
% L/R Knee Felxion/Extension
ROM_Knee_FE_R(183,:) = normalize(R_KN_O{28,1}(start_frame_r:stop_frame_r,1),100);
ROM_Knee_FE_L(183,:) = normalize(L_KN_O{27,1}(start_frame_l:stop_frame_l,1),100); 
% L/R Ankle Plantar-/Dorsi-flexion
ROM_Ank_FE_R(183,:) = normalize(R_ANK_O{28,1}(start_frame_r:stop_frame_r,1),100);
ROM_Ank_FE_L(183,:) = normalize(L_ANK_O{27,1}(start_frame_l:stop_frame_l,1),100);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mean SD
f21 = figure; % ankle plantar- dorsi- flexion
f22 = figure; % knee flexion/extension
f23 = figure; % hip flexion/extension
f24 = figure; % trunk flexion/extension
% L/R Ankle Plantar-/dorsi-flexion
Mean_Ank_FE_L = mean(ROM_Ank_FE_L); Std_Ank_FE_L = std(ROM_Ank_FE_L);
Mean_Ank_FE_R = mean(ROM_Ank_FE_R); Std_Ank_FE_R = std(ROM_Ank_FE_R);
set(0,'CurrentFigure',f21)
plot(ROM_Ank_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Ank_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Ank_FE_R,'r','LineWidth',2);
plot(Mean_Ank_FE_R+2*(Std_Ank_FE_R),'r--','LineWidth',2);plot(Mean_Ank_FE_R-2*(Std_Ank_FE_R),'r--','LineWidth',2);
plot(Mean_Ank_FE_L,'b','LineWidth',2);
plot(Mean_Ank_FE_L+2*(Std_Ank_FE_L),'b--','LineWidth',2);plot(Mean_Ank_FE_L-2*(Std_Ank_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Plantar- / dorsi-flexion [degrees]')    

% L/R Knee Flexion/Extension
Mean_Knee_FE_L = mean(ROM_Knee_FE_L); Std_Knee_FE_L = std(ROM_Knee_FE_L);
Mean_Knee_FE_R = mean(ROM_Knee_FE_R); Std_Knee_FE_R = std(ROM_Knee_FE_R);
set(0,'CurrentFigure',f22)
plot(ROM_Knee_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Knee_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Knee_FE_R,'r','LineWidth',2);
plot(Mean_Knee_FE_R+2*(Std_Knee_FE_R),'r--','LineWidth',2);plot(Mean_Knee_FE_R-2*(Std_Knee_FE_R),'r--','LineWidth',2);
plot(Mean_Knee_FE_L,'b','LineWidth',2);
plot(Mean_Knee_FE_L+2*(Std_Knee_FE_L),'b--','LineWidth',2);plot(Mean_Knee_FE_L-2*(Std_Knee_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');   

% L/R Hip Flexion/Extension
Mean_Hip_FE_L = mean(ROM_Hip_FE_L); Std_Hip_FE_L = std(ROM_Hip_FE_L);
Mean_Hip_FE_R = mean(ROM_Hip_FE_R); Std_Hip_FE_R = std(ROM_Hip_FE_R);
set(0,'CurrentFigure',f23)
plot(ROM_Hip_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Hip_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Hip_FE_R,'r','LineWidth',2);
plot(Mean_Hip_FE_R+2*(Std_Hip_FE_R),'r--','LineWidth',2);plot(Mean_Hip_FE_R-2*(Std_Hip_FE_R),'r--','LineWidth',2);
plot(Mean_Hip_FE_L,'b','LineWidth',2);
plot(Mean_Hip_FE_L+2*(Std_Hip_FE_L),'b--','LineWidth',2);plot(Mean_Hip_FE_L-2*(Std_Hip_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');   

% Trunk Flexion/Extension
Mean_Tnk_FE_L = mean(ROM_Tnk_FE_L); Std_Tnk_FE_L = std(ROM_Tnk_FE_L);
Mean_Tnk_FE_R = mean(ROM_Tnk_FE_R); Std_Tnk_FE_R = std(ROM_Tnk_FE_R);
set(0,'CurrentFigure',f24)
plot(ROM_Tnk_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Tnk_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Tnk_FE_R,'r','LineWidth',2);
plot(Mean_Tnk_FE_R+2*(Std_Tnk_FE_R),'r--','LineWidth',2);plot(Mean_Tnk_FE_R-2*(Std_Tnk_FE_R),'r--','LineWidth',2);
plot(Mean_Tnk_FE_L,'b','LineWidth',2);
plot(Mean_Tnk_FE_L+2*(Std_Tnk_FE_L),'b--','LineWidth',2);plot(Mean_Tnk_FE_L-2*(Std_Tnk_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]'); 

%% T-Balance Left/Right (use left indice to cut the right side)
ROM_Tnk_FE_L = zeros(183,101);  ROM_Tnk_FE_R = zeros(183,101); 
ROM_Tnk_ML_L = zeros(183,101);  ROM_Tnk_ML_R = zeros(183,101); 
ROM_Hip_FE_L = zeros(183,101);  ROM_Hip_FE_R = zeros(183,101);
ROM_Knee_FE_L = zeros(183,101); ROM_Knee_FE_R = zeros(183,101);
for p1 = 1:length(PPID)
    cd([parent_fld,'/',PPID{p1}]);
    load(['JA_',PPID{p1},'.mat']);
    startstop_right = load(['startstop_',PPID{p1},'_TBR_final','.mat']); % load the start and stop point of the movement right side.
    startstop_left = load(['startstop_',PPID{p1},'_TBL_final','.mat']);  % load the start and stop point of the movement left side.    
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
    ROM_Tnk_FE_L(p1,:) = normalize(TRNK_O{29,1}(start_frame_r:stop_frame_r,1),100);
    ROM_Tnk_FE_R(p1,:) = normalize(TRNK_O{28,1}(start_frame_l:stop_frame_l,1),100);        
    % Trunk lateral flexion/extension
    ROM_Tnk_ML_L(p1,:) = normalize(TRNK_O{29,1}(start_frame_r:stop_frame_r,2),100);
    ROM_Tnk_ML_R(p1,:) = normalize(TRNK_O{28,1}(start_frame_l:stop_frame_l,2),100);      
    % Hip flexion/extension
    ROM_Hip_FE_L(p1,:) = normalize(L_HIP_O{29,1}(start_frame_r:stop_frame_r,1),100);
    ROM_Hip_FE_R(p1,:) = normalize(R_HIP_O{28,1}(start_frame_l:stop_frame_l,1),100);                 
    % Knee flexion/extension
    ROM_Knee_FE_L(p1,:) = normalize(L_KN_O{29,1}(start_frame_r:stop_frame_r,1),100);
    ROM_Knee_FE_R(p1,:) = normalize(R_KN_O{28,1}(start_frame_l:stop_frame_l,1),100);   
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
ROM_Tnk_FE_L(182,:) = normalize(TRNK_O{31,1}(start_frame_r:stop_frame_r,1),100);
ROM_Tnk_FE_R(182,:) = normalize(TRNK_O{30,1}(start_frame_l:stop_frame_l,1),100);        
% Trunk lateral flexion/extension
ROM_Tnk_ML_L(182,:) = normalize(TRNK_O{31,1}(start_frame_r:stop_frame_r,2),100);
ROM_Tnk_ML_R(182,:) = normalize(TRNK_O{30,1}(start_frame_l:stop_frame_l,2),100);      
% Hip flexion/extension
ROM_Hip_FE_L(182,:) = normalize(L_HIP_O{31,1}(start_frame_r:stop_frame_r,1),100);
ROM_Hip_FE_R(182,:) = normalize(R_HIP_O{30,1}(start_frame_l:stop_frame_l,1),100);                 
% Knee flexion/extension
ROM_Knee_FE_L(182,:) = normalize(L_KN_O{31,1}(start_frame_r:stop_frame_r,1),100);
ROM_Knee_FE_R(182,:) = normalize(R_KN_O{30,1}(start_frame_l:stop_frame_l,1),100); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Participant 1913 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cd([parent_fld,'/','1913']);
load(['JA_','1913','.mat']);
startstop_right = load(['startstop_','1913','_TBR_final','.mat']); startstop_left = load(['startstop_','1913','_TBL_final','.mat']); 
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
ROM_Tnk_FE_L(183,:) = normalize(TRNK_O{30,1}(start_frame_r:stop_frame_r,1),100);
ROM_Tnk_FE_R(183,:) = normalize(TRNK_O{29,1}(start_frame_l:stop_frame_l,1),100);        
% Trunk lateral flexion/extension
ROM_Tnk_ML_L(183,:) = normalize(TRNK_O{30,1}(start_frame_r:stop_frame_r,2),100);
ROM_Tnk_ML_R(183,:) = normalize(TRNK_O{29,1}(start_frame_l:stop_frame_l,2),100);      
% Hip flexion/extension
ROM_Hip_FE_L(183,:) = normalize(L_HIP_O{30,1}(start_frame_r:stop_frame_r,1),100);
ROM_Hip_FE_R(183,:) = normalize(R_HIP_O{29,1}(start_frame_l:stop_frame_l,1),100);                 
% Knee flexion/extension
ROM_Knee_FE_L(183,:) = normalize(L_KN_O{30,1}(start_frame_r:stop_frame_r,1),100);
ROM_Knee_FE_R(183,:) = normalize(R_KN_O{29,1}(start_frame_l:stop_frame_l,1),100);  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mean SD
f25 = figure; % knee flexion/extension
f26 = figure; % hip flexion/extension
f27 = figure; % trunk flexion/extension
f28 = figure; % trunk lateral bending
% L/R Knee Flexion/Extension
Mean_Knee_FE_L = mean(ROM_Knee_FE_L); Std_Knee_FE_L = std(ROM_Knee_FE_L);
Mean_Knee_FE_R = mean(ROM_Knee_FE_R); Std_Knee_FE_R = std(ROM_Knee_FE_R);
set(0,'CurrentFigure',f25)
plot(ROM_Knee_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Knee_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Knee_FE_R,'r','LineWidth',2);
plot(Mean_Knee_FE_R+2*(Std_Knee_FE_R),'r--','LineWidth',2);plot(Mean_Knee_FE_R-2*(Std_Knee_FE_R),'r--','LineWidth',2);
plot(Mean_Knee_FE_L,'b','LineWidth',2);
plot(Mean_Knee_FE_L+2*(Std_Knee_FE_L),'b--','LineWidth',2);plot(Mean_Knee_FE_L-2*(Std_Knee_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');   

% L/R Hip Flexion/Extension
Mean_Hip_FE_L = mean(ROM_Hip_FE_L); Std_Hip_FE_L = std(ROM_Hip_FE_L);
Mean_Hip_FE_R = mean(ROM_Hip_FE_R); Std_Hip_FE_R = std(ROM_Hip_FE_R);
set(0,'CurrentFigure',f26)
plot(ROM_Hip_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Hip_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Hip_FE_R,'r','LineWidth',2);
plot(Mean_Hip_FE_R+2*(Std_Hip_FE_R),'r--','LineWidth',2);plot(Mean_Hip_FE_R-2*(Std_Hip_FE_R),'r--','LineWidth',2);
plot(Mean_Hip_FE_L,'b','LineWidth',2);
plot(Mean_Hip_FE_L+2*(Std_Hip_FE_L),'b--','LineWidth',2);plot(Mean_Hip_FE_L-2*(Std_Hip_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]');   

% Trunk Flexion/Extension
Mean_Tnk_FE_L = mean(ROM_Tnk_FE_L); Std_Tnk_FE_L = std(ROM_Tnk_FE_L);
Mean_Tnk_FE_R = mean(ROM_Tnk_FE_R); Std_Tnk_FE_R = std(ROM_Tnk_FE_R);
set(0,'CurrentFigure',f27)
plot(ROM_Tnk_FE_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Tnk_FE_L','Color',[0 0 1 0.2]);
plot(Mean_Tnk_FE_R,'r','LineWidth',2);
plot(Mean_Tnk_FE_R+2*(Std_Tnk_FE_R),'r--','LineWidth',2);plot(Mean_Tnk_FE_R-2*(Std_Tnk_FE_R),'r--','LineWidth',2);
plot(Mean_Tnk_FE_L,'b','LineWidth',2);
plot(Mean_Tnk_FE_L+2*(Std_Tnk_FE_L),'b--','LineWidth',2);plot(Mean_Tnk_FE_L-2*(Std_Tnk_FE_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Flexion / extension [degrees]'); 

% Trunk lateral bending
Mean_Tnk_ML_L = mean(ROM_Tnk_ML_L); Std_Tnk_ML_L = std(ROM_Tnk_ML_L);
Mean_Tnk_ML_R = mean(ROM_Tnk_ML_R); Std_Tnk_ML_R = std(ROM_Tnk_ML_R);
set(0,'CurrentFigure',f28)
plot(ROM_Tnk_ML_R','Color',[1 0 0 0.2]); hold on;
plot(ROM_Tnk_ML_L','Color',[0 0 1 0.2]);
plot(Mean_Tnk_ML_R,'r','LineWidth',2);
plot(Mean_Tnk_ML_R+2*(Std_Tnk_ML_R),'r--','LineWidth',2);plot(Mean_Tnk_ML_R-2*(Std_Tnk_ML_R),'r--','LineWidth',2);
plot(Mean_Tnk_ML_L,'b','LineWidth',2);
plot(Mean_Tnk_ML_L+2*(Std_Tnk_ML_L),'b--','LineWidth',2);plot(Mean_Tnk_ML_L-2*(Std_Tnk_ML_L),'b--','LineWidth',2);
xlim([0 100]);
xlabel('Normalized time [frames]');
ylabel('Lateral flexion / extension [degrees]');  