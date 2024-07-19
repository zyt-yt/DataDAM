CUDA_VISIBLE_DEVICES=0 python distill_test_model.py --dataset CIFAR100 --ipc 10 \
    --Iteration 8000 --epoch_eval_train 1000 \
    --batch_real 256 --batch_train 256 \
    --data_path ./cifar/ --save_path ./huggingface/
