#!/bin/sh

# Give the job a name
#$ -N mathematica

#$ -S /bin/sh

# set working directory on all host to
# directory where the job was started
#$ -cwd

# send output to job.log (STDOUT + STDERR)
#$ -o job.out
#$ -j y

# email information
#$ -m e
# Just change the email address.  You will be emailed when the job has finished.
#$ -M username@science.oregonstate.edu

# Request two cores
#$ -pe orte 2

#Change which version of R you want to load on the Compute Nodes
module load mathematica/10.0.2

# command to run.  ONLY CHANGE THE NAME OF YOUR APPLICATION  
math < test.m
