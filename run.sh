# CUDA_VISIBLE_DEVICES=3 python main_DataDAM.py --dataset CIFAR100 --ipc 10 \
#     --Iteration 10000 --epoch_eval_train 100 \
#     --data_path ./cifar/ --save_path ./resultcifar_zca/ \
#     --zca True
CUDA_VISIBLE_DEVICES=3 python -u main_DataDAM.py --dataset CIFAR100 --ipc 10 \
    --num_exp 4 --Iteration 8000 --epoch_eval_train 30 \
    --data_path ./cifar/ --save_path ./resultcifar/ > log.txt 2>&1


# CUDA_VISIBLE_DEVICES=0,1,2,3 python main_DataDAM.py --dataset CIFAR100 --ipc 10 --Iteration 10000 --epoch_eval_train 100 --data_path ./cifar/ --save_path ./resultcifar/ &> log.txt
#未在代码中实现StepLR, power=4未找到
#1.对于init选择合成数据集, 可以使用dream强化: get_images()
#2.对于network选择, 可以尝试使用early-stage网络: get_network()

#Attention: cuda只能用一张卡, 否则会出错 :utils.py-354