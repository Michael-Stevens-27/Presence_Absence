#!/bin/sh
#$ -cwd           # Set the working directory for the job to the current directory
#$ -V
#$ -pe smp 1      # Request 20 CPU cores
#$ -l h_rt=0:59:00 # Request 10 hour runtime
#$ -l h_vmem=8G   # Request 2GB RAM / core, i.e. 4GB total
#$ -m e -M m.stevens@qmul.ac.uk #email to the qm email address once job is finished 
#$ -t 1-500

module load R/3.4.0
module load fftw/3.3.6-pl2-gcc

Rscript Presence_Absence_Functions.R "${SGE_TASK_ID}"



