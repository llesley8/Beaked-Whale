#!/bin/bash
#SBATCH --job-name=genomescopek19 # Name the job genomescopek19 to the queue
#SBATCH --time=0-04:00:00 # Wall clock time limit in Days-Hours:min:seconds
#SBATCH --mail-user=llugardo@ucsc.edu # send updates to my email
#SBATCH --mail-type=ALL # send all types of updates
#SBATCH --output=genomescopek19.out # output file
#SBATCH --error=genomescopek19.err # error file
#SBATCH --ntasks=1 # Run 1 job
#SBATCH --ntasks-per-node=1 # one task per computer
#SBATCH --cpus-per-task=8 # 8 CPUS per job
#SBATCH --mem=64GB # memory limit of 64 GB

module load miniconda3
conda activate ~/envs/genomescope
genomescope.R -i 19mers.histo -o output -k 19 -p 2
