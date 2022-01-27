#!/bin/bash
#SBATCH --job-name=nwb
#SBATCH --time=15:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --output nwb-%j.out
#SBATCH --mem-per-cpu=16GB
#SBATCH --gres=gpu:1
#SBATCH --constraint=any-gpu

module purge
module load openmind/miniconda/4.9.2-py3.9
source ~/.bash_profile
source activate 9.49-linux-env
srun --unbuffered python nwb_train.py

