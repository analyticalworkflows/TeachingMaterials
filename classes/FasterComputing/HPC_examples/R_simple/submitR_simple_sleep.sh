#!/bin/sh

# Give the job a name
#$ -N R_simple

#$ -S /bin/sh

# set working directory on all host to
# directory where the job was started
#$ -cwd

# send output to job.log (STDOUT + STDERR)
#$ -o job.log
#$ -j y


# email information
#$ -m e
# Just change the email address.  You will be emailed when the job has finished.
#$ -M username@science.oregonstate.edu

#Change which version of R you want to load on the Compute Nodes
module load R/3.3.1

# command to run.  ONLY CHANGE THE NAME OF YOUR APPLICATION  
Rscript test3_sleep.r
