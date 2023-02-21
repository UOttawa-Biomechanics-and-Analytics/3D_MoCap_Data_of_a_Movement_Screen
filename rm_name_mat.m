clear all;
close all;
clc;
% used to de-identify the file names in .mat file

%% Data root folder
target_root_path = ('\\uottawa.o.univ\shares\HSS\SpineBiomech\Projects\Gwyneth\SMBLData_OS\Kinematic_Data'); 

%% Remove the participants names and initials in the FILE_NAME
cd (target_root_path);
flds = dir();
dirFlags = [flds.isdir];
subFolders = flds(dirFlags); 
par_fld = {subFolders(3:end).name};               % get all the participants folders

for p = 1:length(par_fld)
    cd(strcat(target_root_path,'\',par_fld{1,p})) % cd into that particpant folder
    matfiles = dir("*.mat");                      % search all .mat files in the folder
    file = {matfiles.name};                       % get the names 
    
    for m = 1: length(file)
        Mat = matfile(file{1,m},'Writable',true);
        fnames = Mat.FILE_NAME;
        
        final_fnames = cell(length(fnames),1);
        for i = 1:length(fnames)
            [~,names,~] = fileparts(fnames{i,1});
            tname = strsplit(names,'-');
            tname_clean = regexp(strsplit(tname{1,1},'-'),'(^[^\d]+)','split','once'); % get rid of the name of the participant
            final_fnames{i,1} = tname_clean{1,1}{1,2};
        end
        Mat.FILE_NAME = final_fnames;                                                 % rewrite the file name
    end
end


