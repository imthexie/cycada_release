#!/bin/sh
for i in 1 5 10
do
    sbatch --mem 32000 --partition=atlas --gres=gpu:1 /atlas/u/eix/home/cycada_release/scripts/slurm_scripts/run_cycada_supervised_restricted.sh --export=NUM_TARGET=$i
done
