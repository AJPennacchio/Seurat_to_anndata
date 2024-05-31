#!/bin/bash
#$ -S /bin/bash      # the shell language when run via the job scheduler
#$ -cwd               # job should run in the current working directory
#$ -j y               # STDERR and STDOUT should be joined
#$ -l mem_free=1G     # job requires up to 1 GiB of RAM per slot
#$ -l scratch=100G      # job requires up to 100 GiB of local /scratch space
#$ -l h_rt=1:00:00    # job requires up to 1 hour of runtime


# Mount the current directory to the container
# Any directory that needs to be accessed by the container should be mounted
directory=/wynton/home/yang/apennacchio/Seurat-anndata
export APPTAINER_BINDPATH="$directory"
#export CUDA_VISIBLE_DEVICES=$SGE_GPU

apptainer run sceasy_latest.sif 

[[ -n "$JOB_ID" ]] && qstat -j "$JOB_ID"

