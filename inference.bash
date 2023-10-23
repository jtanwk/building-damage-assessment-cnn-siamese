#!/usr/bin/env bash

# docker run \
#     --name "nlrc-model" \
#     --rm \
#     nlrc-building-damage-assessment:latest \
#     "--output_dir" "outputs" \
#     "--data_img_dir" "." \
#     "--data_inference_dict" "constants/splits/test_jt.json" \
#     "--data_mean_stddev" "constants/splits/all_disaster_mean_stddev_tiles_0_1.json" \
#     "--label_map_json" "constants/class_lists/xBD_label_map.json" \
#     "--model" "models/model_best.pth.tar"

python3 inference/inference.py \
    --output_dir outputs \
    --data_img_dir ./raw/all_disaster_splits \
    --data_inference_dict constants/splits/test_jt.json \
    --data_mean_stddev constants/splits/all_disaster_mean_stddev_tiles_0_1.json \
    --label_map_json constants/class_lists/xBD_label_map.json \
    --model models/model_best.pth.tar
