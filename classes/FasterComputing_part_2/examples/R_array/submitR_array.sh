#!/bin/sh

# Give the job a name
#$ -N R_Array

#$ -S /bin/sh

# set working directory on all host to
# directory where the job was started
#$ -cwd

# send output to job.log (STDOUT + STDERR)
#$ -o job.log
#$ -j y

# Setup array variables (range and step of chunks)
#$ -t 1-1000:100

# email information
#$ -m e
# Just change the email address.  You will be emailed when the job has finished.
#$ -M username@science.oregonstate.edu

mystart=${SGE_TASK_ID}
myend=$((${SGE_TASK_ID} + ${SGE_TASK_STEPSIZE} - 1))


#Change which version of R you want to load on the Compute Nodes
module load R/3.2.1

# command to run.  ONLY CHANGE THE NAME OF YOUR APPLICATION  
R --slave < test.r > output.${SGE_TASK_ID} --args $mystart $myend
