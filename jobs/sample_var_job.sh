#!/bin/bash
#SBATCH --nodes 1
#SBATCH --ntasks 1
#SBATCH --time=00:05:00
#SBATCH --chdir /home1/ttrojan/running-jobs-on-carc-bootcamp-2023
#SBATCH --account=hpcsuppt_613
#SBATCH --partition=gpu
#SBATCH --reservation=bootcamp
module purge
module load usc
echo "Job ID: $SLURM_JOB_ID"
echo "Nodelist: $SLURM_JOB_NODELIST"
cd $SLURM_SUBMIT_DIR
echo `pwd`
