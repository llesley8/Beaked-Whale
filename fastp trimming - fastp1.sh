#!/bin/bash
#SBATCH --job-name=fastp # Name the job fastp to the queue
#SBATCH --time=0-12:00:00 # Wall clock time limit in Days-Hours:min:seconds
#SBATCH --mail-user=llugardo@ucsc.edu # send updates to my email
#SBATCH --mail-type=ALL # send all types of updates
#SBATCH --output=fastp.out # output file
#SBATCH --error=fastp.err # error file
#SBATCH --ntasks=1 # Run 1 job
#SBATCH --ntasks-per-node=1 # one task per computer
#SBATCH --cpus-per-task=8 # 8 CPUS per job
#SBATCH --mem=40GB # memory limit of 40 GB

module load miniconda3
conda activate /hb/home/llugardo/envs/fastp
fastp -i /hb/home/llugardo/bwfiles/m84053_240607_205216_s1.hifi_reads.bc2072.fastq.gz -o /hb/home/llugardo/trimming/fastp/m84053_240607_205216_s1.hifi_reads.bc2072.fastptrimmed.fastq.gz --trim_poly_a -l 40 
