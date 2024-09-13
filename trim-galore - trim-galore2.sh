#!/bin/bash
#SBATCH --job-name=trim-galore2 # Name the job trim-galore1 to the queue
#SBATCH --time=5-24:00:00 # Wall clock time limit in Days-Hours:min:seconds
#SBATCH --mail-user=llugardo@ucsc.edu # send updates to my email
#SBATCH --mail-type=ALL # send all types of updates
#SBATCH --output=trim-galore2.out # output file
#SBATCH --error=trim-galore2.err # error file
#SBATCH --ntasks=1 # Run 1 job
#SBATCH --ntasks-per-node=1 # one task per computer
#SBATCH --cpus-per-task=10 # 10 CPUS per job
#SBATCH --mem=64GB # memory limit of 64 GB

module load miniconda3
conda activate /hb/home/llugardo/envs/trimgalore
trim_galore -q 20 /hb/home/llugardo/bwfiles/bwtrimmedpolyatailm84053_240607_205216_s1.hifi_reads.bc2072.trimmedpoly.fastq.gz
