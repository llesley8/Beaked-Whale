#!/bin/bash
#SBATCH --job-name=k19nanoplot # Name the job k19nanoplot to the queue
#SBATCH --time=0-04:00:00 # Wall clock time limit in Days-Hours:min:seconds
#SBATCH --mail-user=llugardo@ucsc.edu # send updates to my email
#SBATCH --mail-type=ALL # send all types of updates
#SBATCH --output=k19nanoplot.out # output file
#SBATCH --error=k19nanoplot.err # error file
#SBATCH --ntasks=1 # Run 1 job
#SBATCH --ntasks-per-node=1 # one task per computer
#SBATCH --cpus-per-task=16 # 16 CPUS per job
#SBATCH --mem=64GB # memory limit of 64 GB

module load miniconda3
conda activate /hb/groups/kelley_training/lesley/envs/NanoPlot

NanoPlot -t 16 --fasta /hb/groups/kelley_training/lesley/nanoplot/19mers_dump.fa --plots kde dot --N50
