#!/bin/bash

# first job called from the day directory
# creates RPLParallel, Unity, and EDFSplit objects, and
# calls aligning_objects and raycast
sbatch /data/src/EE3801/rplparallel-slurm.sh

# second set of jobs called from the day directory
sbatch /data/src/EE3801/rs1-slurm.sh
sbatch /data/src/EE3801/rs2-slurm.sh
sbatch /data/src/EE3801/rs3-slurm.sh
sbatch /data/src/EE3801/rs4-slurm.sh
