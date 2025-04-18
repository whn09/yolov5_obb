# pip install -r requirements.txt
# cd utils/nms_rotated
# python setup.py develop  #or "pip install -v -e ."

# cd DOTA_devkit
# sudo apt-get install -y swig
# swig -c++ -python polyiou.i
# python setup.py build_ext --inplace

# python detect.py --weights 'weights/yolov5m_finetune/weights/best.pt' \
#   --source 'dataset/dataset_demo/images/' \
#   --img 2048 --device 0 --conf-thres 0.25 --iou-thres 0.2 --hide-labels --hide-conf

# python val.py \
#  --data 'data/yolov5obb_demo.yaml' \
#  --weights 'weights/yolov5m_finetune/weights/best.pt' \
#  --batch-size 1 --img 2048 --task 'val' --device 0 --save-json --name 'obb_demo'

# python tools/TestJson2VocClassTxt.py --json_path 'runs/val/obb_demo/best_obb_predictions.json' --save_path 'runs/val/obb_demo/obb_predictions_Txt'

# TODO bug now
# python DOTA_devkit/dota_evaluation_task1.py \
#     --detpath 'runs/val/obb_demo/obb_predictions_Txt/Task1_{:s}.txt' \
#     --annopath 'dataset/dataset_demo/labelTxt/{:s}.txt' \
#     --imagesetfile 'dataset/dataset_demo/imgnamefile.txt'

python train.py \
  --weights 'weights/yolov5n.pt' \
  --data 'data/yolov5obb_demo.yaml' \
  --hyp 'data/hyps/obb/hyp.finetune_dota.yaml' \
  --epochs 10 \
  --batch-size 1 \
  --img 1024 \
  --device 0