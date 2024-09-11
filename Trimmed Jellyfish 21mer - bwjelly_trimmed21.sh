#!/bin/bash
#SBATCH --job-name=bwjelly_trimmed21 # Name the job bwjelly_trimmed21 to the queue
#SBATCH --time=0-04:00:00 # Wall clock time limit in Days-Hours:min:seconds
#SBATCH --mail-user=llugardo@ucsc.edu # send updates to my email
#SBATCH --mail-type=ALL # send all types of updates
#SBATCH --output=bwjelly_trimmed21.out # output file
#SBATCH --error=bwjelly_trimmed21.err # error file
#SBATCH --ntasks=1 # Run 1 job
#SBATCH --ntasks-per-node=1 # one task per computer
#SBATCH --cpus-per-task=8 # 8 CPUS per job
#SBATCH --mem=64GB # memory limit of 64 GB

module load miniconda3
conda activate /hb/home/llugardo/envs/jellyfish
jellyfish count <(zcat /hb/home/llugardo/bwfiles/bwtrimmedpolyatailm84053_240607_205216_s1.hifi_reads.bc2072.trimmedpoly.fastq.gz) -C -m 21 -s 10000000 -t 8 -o trimmed_21mers.jf
