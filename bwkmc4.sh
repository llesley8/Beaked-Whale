#!/bin/bash
#SBATCH --job-name=bwKMC # Name the job bwkmc1 to the queue
#SBATCH --time=0-02:00:00 # Wall clock time limit in Days-Hours:min:seconds
#SBATCH --mail-user=llugardo@ucsc.edu # send updates to my email
#SBATCH --mail-type=ALL # send all types of updates
#SBATCH --output=KMC_v1.out # output file
#SBATCH --error=KMC_v1.err # error file
#SBATCH --ntasks=1 # Run 1 job
#SBATCH --ntasks-per-node=1 # one task per computer
#SBATCH --cpus-per-task=12 # 12 CPUS per job
#SBATCH --mem=70GB # memory limit of 70 GB

module load miniconda3
conda activate /hb/home/llugardo/envs/kmc
kmc -k21 -t12 /hb/groups/kelley_training/beaked_whale/PBmixRevio1579_2_A01_PHGP_30hours_1-121kbExpressCCSv32hrPE_250pM_Mesoplodon_bc2072_CCSExpress/m84053_240607_205216_s1.hifi_reads.bc2072.fastq.gz 21mers_v1 .

#Usage: kmc [options] <input_file_name> <output_file_name> <working directory>
#Options parameter defaults:
#(-m) max amount of RAM in GB; default: 12
#(-ci) exclude k-mers occurring less than <value> times; default: 2
#(-cs) maximal value of a counter; default: 25
#(-cx) exclude k-mers occurring more of than <value> times; default: 1000000000 (1e9)
#(-k) k-mer length; default: 25
#(-p) signature length (5,6,7,8,9,10,11); default: 9
