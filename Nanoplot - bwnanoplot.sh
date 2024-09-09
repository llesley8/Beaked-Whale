#!/bin/bash
#SBATCH --job-name=bwnanoplot # Name the job bwnanoplot to the queue
#SBATCH --time=0-03:00:00 # Wall clock time limit in Days-Hours:min:seconds
#SBATCH --mail-user=llugardo@ucsc.edu # send updates to my email
#SBATCH --mail-type=ALL # send all types of updates
#SBATCH --output=bwnanoplot.out # output file
#SBATCH --error=bwnanoplot.err # error file
#SBATCH --ntasks=1 # Run 1 job
#SBATCH --ntasks-per-node=1 # one task per computer
#SBATCH --cpus-per-task=14 # 14 CPUS per job
#SBATCH --mem=64GB # memory limit of 64 GB

module load miniconda3
conda activate /hb/home/llugardo/envs/nanoplot

NanoPlot -t 14 --fastq /hb/groups/kelley_training/beaked_whale/PBmixRevio1579_2_A01_PHGP_30hours_1-121kbExpressCCSv32hrPE_250pM_Mesoplodon_bc2072_CCSExpress/m84053_240607_205216_s1.hifi_reads.bc2072.fastq.gz --plots kde dot --legacy hex --N50 --no_static

#located in "nanoplot" directory
#to get the hex output rerun with --legacy hex
#included --no_static and --only-report to help prevent crash with NanoPlot v 1.43.0
