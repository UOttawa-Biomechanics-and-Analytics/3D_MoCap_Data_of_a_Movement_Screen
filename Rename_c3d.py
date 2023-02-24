import os
import re


def rename_files(root_path):
    target_fld = "Generated_C3D_files"            # go the folder with .c3d files
    participant_fld_list = os.listdir(root_path)  # dir all participants
    count = 0

    for parID in enumerate(participant_fld_list):
        final_path = os.path.join(root_path, participant_fld_list[parID[0]], target_fld) 

        for root,dirs,files in os.walk(final_path, topdown=True):
            for file in files:
                if file != "Calib1.c3d":
                    new_file = re.split(r'(^[^\d]+)', file)[2:]  # get rid of the names
                    new_file = new_file[0].split("-", 1)[0]

                    old_name = os.path.join(final_path, file)
                    if new_file.endswith(".c3d"):
                        new_name = os.path.join(final_path, new_file)
                        os.rename(old_name, new_name)
                    else:
                        new_name = os.path.join(final_path, new_file +".c3d") # add file extension
                        os.rename(old_name, new_name)                         # rename the files
                count += 1  

        print ('--------------------------------')
        print(f"{count} files were renamed recursively from {root_path}")

if __name__ == "__main__":
    rename_files(r"\\uottawa.o.univ\\shares\\HSS\\SpineBiomech\\Projects\\Gwyneth\\SMBLData_OS\\Upload\\Kinematic_Data")
