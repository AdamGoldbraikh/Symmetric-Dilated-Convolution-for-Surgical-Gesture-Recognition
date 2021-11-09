
from shutil import copy
import os

def copy_features(file_list, src_dir, dst_dir):
    for file in file_list:
        src_path = os.path.join(src_dir, file)
        dst_path = os.path.join(dst_dir, file)
        copy(src_path, dst_path)
    

if __name__ == "__main__":

    dst_dir = os.path.join("SpatialCNN", "Split_mix")
    os.makedirs(dst_dir)

    base_folder = "Suturing"

    for folder_name in os.listdir(base_folder):
        if not os.path.isdir(os.path.join(base_folder,folder_name)):
            continue
        test_file = os.path.join(base_folder, folder_name, "test.txt")
        with open(test_file, "r") as f:
                files = f.read().splitlines()

        files = [file + ".avi.mat" for file in files]

        src_dir = os.path.join("SpatialCNN", folder_name)

        copy_features(files, src_dir, dst_dir)
