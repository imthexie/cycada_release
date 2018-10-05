#!/bin/sh
cd /atlas/u/eix/home/
CUDA_VISIBLE_DEVICES=0 /atlas/u/eix/home/cycada_release/.env/bin/python /atlas/u/eix/home/cycada_release/cyclegan/train.py --name cycada_svhn2mnist_noIdentity_supervised_restricted_$NUM_TARGET \
    --resize_or_crop=None \
    --loadSize=32 --fineSize=32 --which_model_netD n_layers --n_layers_D 3 \
    --model cycle_gan_supervised \
    --lambda_A 1 --lambda_B 1 --lambda_identity 0 \
    --no_flip --batchSize 100 \
    --dataset_mode mnist_svhn --dataroot /scr/eix/data/ \
    --which_direction BtoA --num_labeled_target_per_class $NUM_TARGET --display_id 0
