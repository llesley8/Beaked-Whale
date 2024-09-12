#!/bin/bash
#SBATCH --job-name=fastqc_fpA # Name the job fastqc_fpA to the queue
#SBATCH --time=0-01:00:00 # Wall clock time limit in Days-Hours:min:seconds
#SBATCH --output=fastqc_fpA.out # output file
#SBATCH --error=fastqc_fpA.err # error file
#SBATCH --ntasks=1 # Run 1 job
#SBATCH --ntasks-per-node=1 # one task per computer
#SBATCH --cpus-per-task=2 # 2 CPUS per job
#SBATCH --mem=16GB # memory limit of 16 GB

module load fastqc/0.12.1
fastqc -t 2 -o fastp_polyA /hb/home/llugardo/trimming/fastp/m84053_240607_205216_s1.hifi_reads.bc2072.fastp_polyAtrimmed.fastq.gz
