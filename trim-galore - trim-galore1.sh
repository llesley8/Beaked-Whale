#!/bin/bash
#SBATCH --job-name=trim-galore1 # Name the job trim-galore1 to the queue
#SBATCH --time=0-04:00:00 # Wall clock time limit in Days-Hours:min:seconds
#SBATCH --mail-user=llugardo@ucsc.edu # send updates to my email
#SBATCH --mail-type=ALL # send all types of updates
#SBATCH --output=trim-galore1.out # output file
#SBATCH --error=trim-galore1.err # error file
#SBATCH --ntasks=1 # Run 1 job
#SBATCH --ntasks-per-node=1 # one task per computer
#SBATCH --cpus-per-task=8 # 8 CPUS per job
#SBATCH --mem=64GB # memory limit of 64 GB

module load miniconda3
conda activate /hb/home/llugardo/envs/trimgalore
trim_galore -q --polyA --fastqc <(zcat /hb/groups/kelley_training/beaked_whale/PBmixRevio1579_2_A01_PHGP_30hours_1-121kbExpressCCSv32hrPE_250pM_Mesoplodon_bc2072_CCSExpress/m84053_240607_205216_s1.hifi_reads.bc2072.fastq.gz)
