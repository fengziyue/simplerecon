python reader.py --scans_folder /fastscratch/zfeng/ScanNet2/scans_test \
                 --output_path  /fastscratch/zfeng/ScanNet2/scans_test \
                 --scan_list_file splits/scannetv2_test.txt \
                 --num_workers 56 \
                 --export_poses \
                 --export_depth_images \
                 --export_color_images;

python reader.py --scans_folder /fastscratch/zfeng/ScanNet2/scans \
                 --output_path  /fastscratch/zfeng/ScanNet2/scans \
                 --scan_list_file splits/scannetv2_train.txt \
                 --num_workers 56 \
                 --export_poses \
                 --export_depth_images \
                 --export_color_images;

python reader.py --scans_folder /fastscratch/zfeng/ScanNet2/scans \
                 --output_path  /fastscratch/zfeng/ScanNet2/scans \
                 --scan_list_file splits/scannetv2_val.txt \
                 --num_workers 56 \
                 --export_poses \
                 --export_depth_images \
                 --export_color_images;

python reader.py --scans_folder /fastscratch/zfeng/ScanNet2/scans \
                 --output_path /fastscratch/zfeng/ScanNet2/scans \
                 --scan_list_file splits/scannetv2_train.txt \
                 --num_workers 56 \
                 --export_depth_images \
                 --export_color_images \
                 --rgb_resize 512 384 \
                 --depth_resize 256 192;

python reader.py --scans_folder /fastscratch/zfeng/ScanNet2/scans \
                 --output_path /fastscratch/zfeng/ScanNet2/scans \
                 --scan_list_file splits/scannetv2_train.txt \
                 --num_workers 56 \
                 --export_color_images \
                 --rgb_resize 640 480 \
