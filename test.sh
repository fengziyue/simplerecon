CUDA_VISIBLE_DEVICES=0 python test.py --name HERO_MODEL  \
        --output_base_path OUTPUT_PATH   \
        --config_file configs/models/hero_model.yaml         \
        --load_weights_from_checkpoint weights/trained.ckpt  \
        --data_config configs/data/scannet_default_test.yaml   \
        --num_workers 8   --batch_size 4   --cache_depths
