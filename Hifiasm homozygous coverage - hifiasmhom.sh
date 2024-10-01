#!/bin/bash
#SBATCH --job-name=hifihomozygous # Name the job hifihom to the queue
#SBATCH --time=2-12:00:00 # Wall clock time limit in Days-Hours:min:seconds
#SBATCH --mail-user=llugardo@ucsc.edu # send updates to my email
#SBATCH --mail-type=ALL # send all types of updates
#SBATCH --output=hifihomozygous.out # output file
#SBATCH --error=hifihomozygous.err # error file
#SBATCH --ntasks=1 # Run 1 job
#SBATCH --ntasks-per-node=1 # one task per computer
#SBATCH --cpus-per-task=12 # 12 CPUS per job
#SBATCH --mem=80GB # memory limit of 80 GB

module load miniconda3
conda activate /hb/groups/kelley_training/lesley/envs/hifiasm
hifiasm -o Hifihomozygous.asm --hom-cov -t 12 /hb/groups/kelley_training/beaked_whale/PBmixRevio1579_2_A01_PHGP_30hours_1-121kbExpressCCSv32hrPE_250pM_Mesoplodon_bc2072_CCSExpress/m84053_240607_205216_s1.hifi_reads.bc2072.fastq.gz
