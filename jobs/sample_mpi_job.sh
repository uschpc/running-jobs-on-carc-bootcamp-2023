#!/bin/bash
#SBATCH --nodes 3
#SBATCH --ntasks 9
#SBATCH --time=00:05:00
#SBATCH --mem-per-cpu=512MB
#SBATCH --chdir /home1/ttrojan/running-jobs-on-carc-bootcamp-2023
#SBATCH --account=hpcsuppt_613
#SBATCH --partition=gpu
#SBATCH --reservation=bootcamp

module purge
module load usc

srun --mpi=pmix_v2 --ntasks $SLURM_NTASKS data/mpi_sample/mpi_hello_world
