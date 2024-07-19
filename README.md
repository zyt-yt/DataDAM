1. 现在跑出来的DataDAM达不到32的正确率, 只有25
Guess: 初始化图片的选择很重要
Guess: zca的相关操作并没有完成, 如args.zca_trans.inverse_transform

2. DataDAM给出来的图片在official-evaluate上只有25, 但使用它自己的distill_test_model可以有32
Guess1: official的测试集合不是cifar100的测试集 ❌
Guess2: batchnorm与instancenorm的区别 ✅
Guess3: 网络初始化的seed不同