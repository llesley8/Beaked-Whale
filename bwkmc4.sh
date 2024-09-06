#!/bin/bash
#SBATCH --job-name=bwkmc4 # Name the job bwkmc1 to the queue
#SBATCH --time=0-24:00:00 # Wall clock time limit in Days-Hours:min:seconds
#SBATCH --output=bwkmc4.out # output file
#SBATCH --error=bwkmc4.err # error file
#SBATCH --ntasks=1 # Run 1 job
#SBATCH --ntasks-per-node=1 # one task per computer
#SBATCH --cpus-per-task=12 # 12 CPUS per job
#SBATCH --mem=80GB # memory limit of 80 GB

kmc -k21 -t12 -m64 -ci1 -cs100000000 /hb/groups/kelley_training/beaked_whale/PBmixRevio1579_2_A01_PHGP_30hours_1-121kbExpressCCSv32hrPE_250pM_Mesoplodon_bc2072_CCSExpress/m84053_240607_205216_s1.hifi_reads.bc2072.fastq.gz 21mers .
