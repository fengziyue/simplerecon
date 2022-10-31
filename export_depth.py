import os
import glob
import cv2
import numpy as np
import pickle
import torch
import torch.nn.functional as F
from tqdm import tqdm


def export_depths(list_filename):
    num = sum(1 for line in open(list_filename))
    with open(list_filename, 'r') as file:
        for line in tqdm(file, total=num):
            scene, frame = line.split()[:2]
            simplerecon_depth_path = '/fastscratch/zfeng/simplerecon/OUTPUT_PATH/HERO_MODEL/scannet/default/depths/' + scene + '/' + frame + '.pickle'
            with open(simplerecon_depth_path,'rb') as file: 
                sr=pickle.load(file)
            SRdepth = F.interpolate(sr['depth_pred_s0_b1hw'],[240, 320], mode="nearest").squeeze().cpu().numpy()
            out_path = 'OUTPUT_PATH/HERO_MODEL/scannet/default/depths/' + scene + '/' + frame + '.npy'
            np.save(out_path, SRdepth)




if __name__ == '__main__':
    export_depths('data_splits/ScanNetv2/standard_split/val_eight_view_deepvmvs.txt')
