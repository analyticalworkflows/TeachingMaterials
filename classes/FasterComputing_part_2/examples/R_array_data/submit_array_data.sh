#!/bin/bash
#SBATCH -J array_data
#SBATCH -o output_%a.txt
#SBATCH -e errors_%a.txt

#SBATCH --mail-type=ALL
#SBATCH --mail-user=novakm@oregonstate.edu

#SBATCH --partition=test.q             # can use dri.q or preempt.q; to test code use test.q
#SBATCH --ntasks=1                    # Number of tasks
#SBATCH --array=0-4                   # Array range (0 to 4 for 5 jobs)

#SBATCH --time=00:05:00
#SBATCH --mem=1G

# gather basic information, can be useful for troubleshooting
hostname
date
echo $SLURM_JOBID

# Load the R Module
module load R/4.4.1

# Run the R script with the input file
Rscript array_data.R $SLURM_ARRAY_TASK_ID