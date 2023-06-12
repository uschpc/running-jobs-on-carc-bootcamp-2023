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
module load fastqc
echo "Example FastQC start"
sleep 20
fastqc -o results/fastqc-rawseq data/raw-seq/yeast_1_50K.fastq
echo "Example FastQC end"
