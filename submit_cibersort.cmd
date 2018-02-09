#!/bin/bash
#$ -cwd
#$ -o  joblog.$JOB_ID
#$ -j y
#  Resources requested:
#$ -l h_data=32g,h_rt=6:00:00
#  Email address to notify
#$ -M $USER@mail
#$ -m bea

  echo ""
  echo "test started on:   "` hostname -s `
  echo "test started at:   "` date `
  echo ""
#
  . /u/local/Modules/default/init/modules.sh
  module load R
  

#
# Run the user program
#
 
R CMD BATCH --no-save --no-restore "input1.txt input2.txt 500" ./call_cibersort.R cibersort.out.${JOB_ID}
