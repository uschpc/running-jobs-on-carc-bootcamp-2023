#!/bin/bash
#SBATCH --nodes 1
#SBATCH --ntasks 10
#SBATCH --time=00:05:00
#SBATCH --chdir /home1/ttrojan/running-jobs-on-carc-bootcamp-2023
#SBATCH --account=hpcsuppt_613
#SBATCH --partition=gpu
#SBATCH --reservation=bootcamp
module purge
module load usc
module load blast-plus
echo "Example blast start"
sleep 20
blastp -db /project/biodb/genbank/2022-01-01/swissprot -query data/blast/query.txt -out results/blast/results.txt -num_threads $SLURM_NTASKS
echo "Example blast end"
