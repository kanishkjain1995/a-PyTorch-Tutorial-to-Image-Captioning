#!/bin/bash
export SBATCH_ACCOUNT
#SBATCH --job-name=image_caption
#SBATCH -A $USER
#SBATCH --mail-type=COMPLETED,FAILED
#SBATCH --mail-user=kanishk.jain@alumni.iiit.ac.in
#SBATCH -n 1
#SBATCH --mem-per-cpu=8192
#SBATCH --gres=gpu:1
#SBATCH --time=4-00:00:00
#module load opencv/3.3.0
module load cuda/10.0
module load cudnn/7-cuda-10.0
#module load cudnn/6-cuda-8.0 

set -e
#export LD_LIBRARY_PATH=/usr/local/apps/cuDNN/5.1/lib64:$LD_LIBRARY_PATH
#export CPATH=/usr/local/apps/cuDNN/5.1/include:$CPATH 
#export LIBRARY_PATH=/usr/local/apps/cuDNN/5.1/lib64:$LIBRARY_PATH
#export PYTHONUNBUFFERED="True"
#export THEANO_FLAGS="floatX=float32, device=cuda*,assert_no_cpu_op='raise'"
#export CUDA_VISIBLE_DEVICES=0,1,2,3
python3 train.py
