#!/bin/bash
#SBATCH --job-name=bwhisto # Name the job bwhisto to the queue
#SBATCH --time=0-02:00:00 # Wall clock time limit in Days-Hours:min:seconds
#SBATCH --mail-user=llugardo@ucsc.edu # send updates to my email
#SBATCH --mail-type=ALL # send all types of updates
#SBATCH --output=bwhisto.out # output file
#SBATCH --error=bwhisto.err # error file
#SBATCH --ntasks=1 # Run 1 job
#SBATCH --ntasks-per-node=1 # one task per computer
#SBATCH --cpus-per-task=2 # 2 CPUS per job
#SBATCH --mem=4GB # memory limit of 4 GB

module load miniconda3
conda activate /hb/home/llugardo/envs/kmc
kmc_tools transform 21mers_v1 histogram 21mers_v1.histo
