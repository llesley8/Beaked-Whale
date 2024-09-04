#!/bin/bash
#SBATCH --job-name=bwcutadapt # Name the job bwfastqc to the queue 
#SBATCH --time=0-01:00:00 # Wall clock time limit in Days-Hours:min:seconds
#SBATCH --mail-type=ALL # send all types of updates
#SBATCH --output=bwcutadapt.out # output file
#SBATCH --error=bwcutadapt.err # error file
#SBATCH --ntasks=1 # Run 1 job
#SBATCH --ntasks-per-node=1 # one task per computer
#SBATCH --cpus-per-task=2 # 2 CPUS per job
#SBATCH --mem=4GB # memory limit of 4 GB

cutadapt -a "A{10}N{90}" -o /hb/groups/kelley_training/Emma/bwfastqc_results/bwtrimmedpolyatail/m84053_240607_205216_s1.hifi_reads.bc2072.trimmedpoly.fastq.gz /hb/groups/kelley_training/beaked_whale/PBmixRevio1579_2_A01_PHGP_30hours_1-121kbExpressCCSv32hrPE_250pM_Mesoplodon_bc2072_CCSExpress/m84053_240607_205216_s1.hifi_reads.bc2072.fastq.gz
