#!/bin/bash
#SBATCH --job-name=bwkmc4_histo # Name the job bwfastqc to the queue
#SBATCH --time=0-02:00:00 # Wall clock time limit in Days-Hours:min:seconds
#SBATCH --mail-user=llugardo@ucsc.edu # send updates to my email
#SBATCH --mail-type=ALL # send all types of updates
#SBATCH --output=bwkmc4_histo.out # output file
#SBATCH --error=bwkmc4_histo.err # error file
#SBATCH --ntasks=1 # Run 1 job
#SBATCH --ntasks-per-node=1 # one task per computer
#SBATCH --cpus-per-task=2 # 2 CPUS per job
#SBATCH --mem=30GB # memory limit of 30 GB

kmc_tools transform 21mers histogram 21mers.histo -cx100000000
