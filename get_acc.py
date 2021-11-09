
import os
import numpy as np
import re

def get_acc(folder_name):
    acc_list = []

    for file in os.listdir(folder_name):
        file_path = os.path.join(folder_name, file)

        with open(file_path) as f:
            data = f.read()

            
        s = "Evaluation Accuray:"
        start = data.find("Evaluation Accuray:")
        end = data.find("\n", start)

        acc = re.findall(r'[\d]+[.][\d]+', data[start:end])[0]

        acc_list.append(float(acc) * 100)

    acc_list = np.array(acc_list)

    return acc_list

def print_split(x):
    print(x)
    print(f"mean: {x.mean()}, var: {x.var()}")

if __name__ == "__main__":


    base_folder = "Logs"

    for folder_name in sorted(os.listdir(base_folder)):
        print(folder_name.split("_")[1])
        acc_list = get_acc(os.path.join(base_folder, folder_name))

        print_split(acc_list)

    


    