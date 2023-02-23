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
% Mean, Max and Min
% Ankle left and right
Mean_ROM_Ank_FE_L = mean(ROM_Ank_FE_L); Max_mean_Ank_FE_L = max(Mean_ROM_Ank_FE_L); Min_mean_Ank_FE_L = min(Mean_ROM_Ank_FE_L);
Mean_ROM_Ank_FE_R = mean(ROM_Ank_FE_R); Max_mean_Ank_FE_R = max(Mean_ROM_Ank_FE_R); Min_mean_Ank_FE_R = min(Mean_ROM_Ank_FE_R);
% Knee left and right
Mean_ROM_Knee_FE_L = mean(ROM_Knee_FE_L); Max_mean_Knee_FE_L = max(Mean_ROM_Knee_FE_L); Min_mean_Knee_FE_L = min(Mean_ROM_Knee_FE_L);
Mean_ROM_Knee_FE_R = mean(ROM_Knee_FE_R); Max_mean_Knee_FE_R = max(Mean_ROM_Knee_FE_R); Min_mean_Knee_FE_R = min(Mean_ROM_Knee_FE_R);
% Hip left and right
Mean_ROM_Hip_FE_L = mean(ROM_Hip_FE_L); Max_mean_Hip_FE_L = max(Mean_ROM_Hip_FE_L); Min_mean_Hip_FE_L = min(Mean_ROM_Hip_FE_L);
Mean_ROM_Hip_FE_R = mean(ROM_Hip_FE_R); Max_mean_Hip_FE_R = max(Mean_ROM_Hip_FE_R); Min_mean_Hip_FE_R = min(Mean_ROM_Hip_FE_R);
% Trunk
Mean_ROM_Tnk_FE = mean(ROM_Tnk_FE); Max_mean_Tnk_FE = max(Mean_ROM_Tnk_FE); Min_mean_Tnk_FE = min(Mean_ROM_Tnk_FE);

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
% Mean, Max and Min
% Ankle left and right
Mean_ROM_Ank_FE_L = mean(ROM_Ank_FE_L); Max_mean_Ank_FE_L = max(Mean_ROM_Ank_FE_L); Min_mean_Ank_FE_L = min(Mean_ROM_Ank_FE_L);
Mean_ROM_Ank_FE_R = mean(ROM_Ank_FE_R); Max_mean_Ank_FE_R = max(Mean_ROM_Ank_FE_R); Min_mean_Ank_FE_R = min(Mean_ROM_Ank_FE_R);
% Knee left and right
Mean_ROM_Knee_FE_L = mean(ROM_Knee_FE_L); Max_mean_Knee_FE_L = max(Mean_ROM_Knee_FE_L); Min_mean_Knee_FE_L = min(Mean_ROM_Knee_FE_L);
Mean_ROM_Knee_FE_R = mean(ROM_Knee_FE_R); Max_mean_Knee_FE_R = max(Mean_ROM_Knee_FE_R); Min_mean_Knee_FE_R = min(Mean_ROM_Knee_FE_R);
% Hip left and right
Mean_ROM_Hip_AB_L = mean(ROM_Hip_AB_L); Max_mean_Hip_AB_L = max(Mean_ROM_Hip_AB_L); Min_mean_Hip_AB_L = min(Mean_ROM_Hip_AB_L);
Mean_ROM_Hip_AB_R = mean(ROM_Hip_AB_R); Max_mean_Hip_AB_R = max(Mean_ROM_Hip_AB_R); Min_mean_Hip_AB_R = min(Mean_ROM_Hip_AB_R);
% Trunk
Mean_ROM_Tnk_FE_L = mean(ROM_Tnk_FE_L); Max_mean_Tnk_FE_L = max(Mean_ROM_Tnk_FE_L); Min_mean_Tnk_FE_L = min(Mean_ROM_Tnk_FE_L);
Mean_ROM_Tnk_FE_R = mean(ROM_Tnk_FE_R); Max_mean_Tnk_FE_R = max(Mean_ROM_Tnk_FE_R); Min_mean_Tnk_FE_R = min(Mean_ROM_Tnk_FE_R);

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
% Mean, Max and Min
% Ankle left and right
Mean_ROM_Ank_FE_L = mean(ROM_Ank_FE_L); Max_mean_Ank_FE_L = max(Mean_ROM_Ank_FE_L); Min_mean_Ank_FE_L = min(Mean_ROM_Ank_FE_L);
Mean_ROM_Ank_FE_R = mean(ROM_Ank_FE_R); Max_mean_Ank_FE_R = max(Mean_ROM_Ank_FE_R); Min_mean_Ank_FE_R = min(Mean_ROM_Ank_FE_R);
% Knee left and right
Mean_ROM_Knee_FE_L = mean(ROM_Knee_FE_L); Max_mean_Knee_FE_L = max(Mean_ROM_Knee_FE_L); Min_mean_Knee_FE_L = min(Mean_ROM_Knee_FE_L);
Mean_ROM_Knee_FE_R = mean(ROM_Knee_FE_R); Max_mean_Knee_FE_R = max(Mean_ROM_Knee_FE_R); Min_mean_Knee_FE_R = min(Mean_ROM_Knee_FE_R);
% Hip left and right
Mean_ROM_Hip_AB_L = mean(ROM_Hip_AB_L); Max_mean_Hip_AB_L = max(Mean_ROM_Hip_AB_L); Min_mean_Hip_AB_L = min(Mean_ROM_Hip_AB_L);
Mean_ROM_Hip_AB_R = mean(ROM_Hip_AB_R); Max_mean_Hip_AB_R = max(Mean_ROM_Hip_AB_R); Min_mean_Hip_AB_R = min(Mean_ROM_Hip_AB_R);
% Trunk
Mean_ROM_Tnk_FE_L = mean(ROM_Tnk_FE_L); Max_mean_Tnk_FE_L = max(Mean_ROM_Tnk_FE_L); Min_mean_Tnk_FE_L = min(Mean_ROM_Tnk_FE_L);
Mean_ROM_Tnk_FE_R = mean(ROM_Tnk_FE_R); Max_mean_Tnk_FE_R = max(Mean_ROM_Tnk_FE_R); Min_mean_Tnk_FE_R = min(Mean_ROM_Tnk_FE_R);

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
% Mean, Max and Min
% Ankle left and right
Mean_ROM_Ank_FE_L = mean(ROM_Ank_FE_L); Max_mean_Ank_FE_L = max(Mean_ROM_Ank_FE_L); Min_mean_Ank_FE_L = min(Mean_ROM_Ank_FE_L);
Mean_ROM_Ank_FE_R = mean(ROM_Ank_FE_R); Max_mean_Ank_FE_R = max(Mean_ROM_Ank_FE_R); Min_mean_Ank_FE_R = min(Mean_ROM_Ank_FE_R);
% Knee left and right
Mean_ROM_Knee_FE_L = mean(ROM_Knee_FE_L); Max_mean_Knee_FE_L = max(Mean_ROM_Knee_FE_L); Min_mean_Knee_FE_L = min(Mean_ROM_Knee_FE_L);
Mean_ROM_Knee_FE_R = mean(ROM_Knee_FE_R); Max_mean_Knee_FE_R = max(Mean_ROM_Knee_FE_R); Min_mean_Knee_FE_R = min(Mean_ROM_Knee_FE_R);
% Hip left and right
Mean_ROM_Hip_FE_L = mean(ROM_Hip_FE_L); Max_mean_Hip_FE_L = max(Mean_ROM_Hip_FE_L); Min_mean_Hip_FE_L = min(Mean_ROM_Hip_FE_L);
Mean_ROM_Hip_FE_R = mean(ROM_Hip_FE_R); Max_mean_Hip_FE_R = max(Mean_ROM_Hip_FE_R); Min_mean_Hip_FE_R = min(Mean_ROM_Hip_FE_R);
% Trunk
Mean_ROM_Tnk_FE_L = mean(ROM_Tnk_FE_L); Max_mean_Tnk_FE_L = max(Mean_ROM_Tnk_FE_L); Min_mean_Tnk_FE_L = min(Mean_ROM_Tnk_FE_L);
Mean_ROM_Tnk_FE_R = mean(ROM_Tnk_FE_R); Max_mean_Tnk_FE_R = max(Mean_ROM_Tnk_FE_R); Min_mean_Tnk_FE_R = min(Mean_ROM_Tnk_FE_R);

%% Rotary Stability Left/Right  
ROM_Hip_FE_L = zeros(183,101);  ROM_Hip_FE_R = zeros(183,101);
ROM_Knee_FE_L = zeros(183,101); ROM_Knee_FE_R = zeros(183,101);
ROM_Tnk_ML_L = zeros(183,101);  ROM_Tnk_ML_R = zeros(183,101); 
ROM_Tnk_FE_L = zeros(183,101);  ROM_Tnk_FE_R = zeros(183,101); 
for p1 = 1:length(PPID)
    cd([parent_fld,'/',PPID{p1}]);
    load(['JA_',PPID{p1},'.mat']);
    startstop_right = load(['startstop_',PPID{p1},'_RSR_final','.mat']); startstop_left = load(['startstop_',PPID{p1},'_RSL_final','.mat']);
    start_frame_r = round(startstop_right.start); stop_frame_r = round(startstop_right.stop);  start_frame_l = round(startstop_left.start); stop_frame_l = round(startstop_left.stop);  
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
% Mean, Max and Min
% Knee left and right
Mean_ROM_Knee_FE_L = mean(ROM_Knee_FE_L); Max_mean_Knee_FE_L = max(Mean_ROM_Knee_FE_L); Min_mean_Knee_FE_L = min(Mean_ROM_Knee_FE_L);
Mean_ROM_Knee_FE_R = mean(ROM_Knee_FE_R); Max_mean_Knee_FE_R = max(Mean_ROM_Knee_FE_R); Min_mean_Knee_FE_R = min(Mean_ROM_Knee_FE_R);
% Hip left and right
Mean_ROM_Hip_FE_L = mean(ROM_Hip_FE_L); Max_mean_Hip_FE_L = max(Mean_ROM_Hip_FE_L); Min_mean_Hip_FE_L = min(Mean_ROM_Hip_FE_L);
Mean_ROM_Hip_FE_R = mean(ROM_Hip_FE_R); Max_mean_Hip_FE_R = max(Mean_ROM_Hip_FE_R); Min_mean_Hip_FE_R = min(Mean_ROM_Hip_FE_R);
% Trunk
Mean_ROM_Tnk_FE_L = mean(ROM_Tnk_FE_L); Max_mean_Tnk_FE_L = max(Mean_ROM_Tnk_FE_L); Min_mean_Tnk_FE_L = min(Mean_ROM_Tnk_FE_L);
Mean_ROM_Tnk_FE_R = mean(ROM_Tnk_FE_R); Max_mean_Tnk_FE_R = max(Mean_ROM_Tnk_FE_R); Min_mean_Tnk_FE_R = min(Mean_ROM_Tnk_FE_R);
% Trunk ML
Mean_ROM_Tnk_ML_L = mean(ROM_Tnk_ML_L); Max_mean_Tnk_ML_L = max(Mean_ROM_Tnk_ML_L); Min_mean_Tnk_ML_L = min(Mean_ROM_Tnk_ML_L);
Mean_ROM_Tnk_ML_R = mean(ROM_Tnk_ML_R); Max_mean_Tnk_ML_R = max(Mean_ROM_Tnk_ML_R); Min_mean_Tnk_ML_R = min(Mean_ROM_Tnk_ML_R);

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
% Mean, Max and Min
% Ankle left and right
Mean_ROM_Ank_FE_L = mean(ROM_Ank_FE_L); Max_mean_Ank_FE_L = max(Mean_ROM_Ank_FE_L); Min_mean_Ank_FE_L = min(Mean_ROM_Ank_FE_L);
Mean_ROM_Ank_FE_R = mean(ROM_Ank_FE_R); Max_mean_Ank_FE_R = max(Mean_ROM_Ank_FE_R); Min_mean_Ank_FE_R = min(Mean_ROM_Ank_FE_R);
% Knee left and right
Mean_ROM_Knee_FE_L = mean(ROM_Knee_FE_L); Max_mean_Knee_FE_L = max(Mean_ROM_Knee_FE_L); Min_mean_Knee_FE_L = min(Mean_ROM_Knee_FE_L);
Mean_ROM_Knee_FE_R = mean(ROM_Knee_FE_R); Max_mean_Knee_FE_R = max(Mean_ROM_Knee_FE_R); Min_mean_Knee_FE_R = min(Mean_ROM_Knee_FE_R);
% Hip left and right
Mean_ROM_Hip_FE_L = mean(ROM_Hip_FE_L); Max_mean_Hip_FE_L = max(Mean_ROM_Hip_FE_L); Min_mean_Hip_FE_L = min(Mean_ROM_Hip_FE_L);
Mean_ROM_Hip_FE_R = mean(ROM_Hip_FE_R); Max_mean_Hip_FE_R = max(Mean_ROM_Hip_FE_R); Min_mean_Hip_FE_R = min(Mean_ROM_Hip_FE_R);
% Trunk
Mean_ROM_Tnk_FE_L = mean(ROM_Tnk_FE_L); Max_mean_Tnk_FE_L = max(Mean_ROM_Tnk_FE_L); Min_mean_Tnk_FE_L = min(Mean_ROM_Tnk_FE_L);
Mean_ROM_Tnk_FE_R = mean(ROM_Tnk_FE_R); Max_mean_Tnk_FE_R = max(Mean_ROM_Tnk_FE_R); Min_mean_Tnk_FE_R = min(Mean_ROM_Tnk_FE_R);

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
% Mean, Max and Min
% Knee left and right
Mean_ROM_Knee_FE_L = mean(ROM_Knee_FE_L); Max_mean_Knee_FE_L = max(Mean_ROM_Knee_FE_L); Min_mean_Knee_FE_L = min(Mean_ROM_Knee_FE_L);
Mean_ROM_Knee_FE_R = mean(ROM_Knee_FE_R); Max_mean_Knee_FE_R = max(Mean_ROM_Knee_FE_R); Min_mean_Knee_FE_R = min(Mean_ROM_Knee_FE_R);
% Hip left and right
Mean_ROM_Hip_FE_L = mean(ROM_Hip_FE_L); Max_mean_Hip_FE_L = max(Mean_ROM_Hip_FE_L); Min_mean_Hip_FE_L = min(Mean_ROM_Hip_FE_L);
Mean_ROM_Hip_FE_R = mean(ROM_Hip_FE_R); Max_mean_Hip_FE_R = max(Mean_ROM_Hip_FE_R); Min_mean_Hip_FE_R = min(Mean_ROM_Hip_FE_R);
% Trunk
Mean_ROM_Tnk_FE_L = mean(ROM_Tnk_FE_L); Max_mean_Tnk_FE_L = max(Mean_ROM_Tnk_FE_L); Min_mean_Tnk_FE_L = min(Mean_ROM_Tnk_FE_L);
Mean_ROM_Tnk_FE_R = mean(ROM_Tnk_FE_R); Max_mean_Tnk_FE_R = max(Mean_ROM_Tnk_FE_R); Min_mean_Tnk_FE_R = min(Mean_ROM_Tnk_FE_R);
% Trunk ML
Mean_ROM_Tnk_ML_L = mean(ROM_Tnk_ML_L); Max_mean_Tnk_ML_L = max(Mean_ROM_Tnk_ML_L); Min_mean_Tnk_ML_L = min(Mean_ROM_Tnk_ML_L);
Mean_ROM_Tnk_ML_R = mean(ROM_Tnk_ML_R); Max_mean_Tnk_ML_R = max(Mean_ROM_Tnk_ML_R); Min_mean_Tnk_ML_R = min(Mean_ROM_Tnk_ML_R);
