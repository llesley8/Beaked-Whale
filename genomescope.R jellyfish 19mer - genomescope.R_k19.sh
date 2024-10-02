#!/bin/bash
#SBATCH --job-name=genomescope.R # Name the job genomescope.R to the queue
#SBATCH --time=0-04:00:00 # Wall clock time limit in Days-Hours:min:seconds
#SBATCH --mail-user=llugardo@ucsc.edu # send updates to my email
#SBATCH --mail-type=ALL # send all types of updates
#SBATCH --output=genomescope.R_k19.out # output file
#SBATCH --error=genomescope.R_k19.err # error file
#SBATCH --ntasks=1 # Run 1 job
#SBATCH --ntasks-per-node=1 # one task per computer
#SBATCH --cpus-per-task=12 # 12 CPUS per job
#SBATCH --mem=64GB # memory limit of 64 GB

module load miniconda3
conda activate /hb/groups/kelley_training/lesley/envs/genomescope2.0
/hb/groups/kelley_training/lesley/genomescope2.0/genomescope.R \
-i 19mers.histo -o output -k 19 -p 2 --fitted_hist
