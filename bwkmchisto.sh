#!/bin/bash
#SBATCH --job-name=bwkmchisto # Name the job bwfastqc to the queue 
#SBATCH --time=0-02:00:00 # Wall clock time limit in Days-Hours:min:seconds
#SBATCH --mail-user=etashi@ucsc.edu # send updates to my email
#SBATCH --mail-type=ALL # send all types of updates
#SBATCH --output=bwkmchisto.out # output file
#SBATCH --error=bwkmchisto.err # error file
#SBATCH --ntasks=1 # Run 1 job
#SBATCH --ntasks-per-node=1 # one task per computer
#SBATCH --cpus-per-task=2 # 2 CPUS per job
#SBATCH --mem=4GB # memory limit of 4 GB

kmc_tools transform 21mers histogram reads.histo -cx10000
