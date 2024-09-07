#!/bin/bash
#SBATCH --job-name=bwjellyhisto # Name the job bwjellyfish to the queue
#SBATCH --time=0-2:00:00 # Wall clock time limit in Days-Hours:min:seconds
#SBATCH --mail-user=llugardo@ucsc.edu # send updates to my email
#SBATCH --mail-type=ALL # send all types of updates
#SBATCH --output=bwjellyhisto.out # output file
#SBATCH --error=bwjellyhisto.err # error file
#SBATCH --ntasks=1 # Run 1 job
#SBATCH --ntasks-per-node=1 # one task per computer
#SBATCH --cpus-per-task=8 # 2 CPUS per job
#SBATCH --mem=4GB # memory limit of 4 GB

module load jellyfish
jellyfish histo output > output.histo

#script specifically for bwjellyfish21.sh which produced "output"
