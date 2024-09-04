#!/bin/bash
#SBATCH --job-name=bwfastqctrim # Name the job bwfastqc to the queue 
#SBATCH --time=0-01:00:00 # Wall clock time limit in Days-Hours:min:seconds
#SBATCH --output=bwfastqctrim.out # output file
#SBATCH --error=bwfastqctrim.err # error file
#SBATCH --ntasks=1 # Run 1 job
#SBATCH --ntasks-per-node=1 # one task per computer
#SBATCH --cpus-per-task=2 # 2 CPUS per job
#SBATCH --mem=4GB # memory limit of 4 GB

module load fastqc/0.12.1

fastqc -t 2 -o /hb/groups/kelley_training/Emma/bwfastqc_results/bwtrimmedpolyatail /hb/groups/kelley_training/Emma/bwfastqc_results/bwtrimmedpolyatailm84053_240607_205216_s1.hifi_reads.bc2072.trimmedpoly.fastq.gz
