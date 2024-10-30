#!/bin/bash
#SBATCH --job-name=Effibench
#SBATCH --output=logs/%x-%j.out
#SBATCH --error=logs/%x-%j.err
#SBATCH --partition=PB

source ${HOME}/.bashrc
source ${HOME}/anaconda3/bin/activate

conda activate GenAI

python3 open_source_model_completion.py --model deepseek-ai/deepseek-coder-6.7b-base
