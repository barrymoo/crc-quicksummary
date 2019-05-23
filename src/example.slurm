#!/usr/bin/env bash
#SBATCH --job-name=CHANGE_ME   # The job name in crc-squeue.py
#SBATCH --output=CHANGE_ME.out # Standard out and error
                               # will be written to this file
#SBATCH --time=5:00:00         # How long should this job run?
                               # Format: [days-]hours:minutes:seconds
#SBATCH --nodes=1              # Number of nodes needed
#SBATCH --ntasks-per-node=1    # Number of MPI tasks per node
                               # pro tip: If you don't know what
                               # this means, leave it at 1
#SBATCH --cpus-per-task=1      # One of:
                               # - number of cores you need
                               # - number of OpenMP threads
#SBATCH --cluster=CHANGE_ME    # Cluster you need: smp, mpi, gpu, htc
                               # Exclude this to get default cluster
                               # H2P - smp
                               # HTC - htc
#SBATCH --partition=CHANGE_ME  # Partition you need
                               # Exclude this to get default partition
                               # default is indicated w/ * in crc-sinfo.py
#SBATCH --mail-user=<email>    # Optional, send yourself an email if
                               # your job ends or fails
#SBATCH --mail-type=END,FAIL   # Pair with --mail-user

module purge
module load YOUR_MODULES_HERE

RUN_YOUR_CODE_HERE
