#!/bin/bash
# NOTE:
# --cpus-per-task parameter controls the number of
# cpus needed to run the current job.
#
# If your application runs sequentially, please set
# --cpus-per-task=1
# If you need to reserve the full node, please set
# --cpus-per-task=26

#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno01/lab3-container/data/
#SBATCH -J LAB03_marisol
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=END   # END/START/NONE
#SBATCH --mail-user=ms.benitezcantos@um.es


echo "Python k=13"
time python3 k-mer13.py

echo "C++ k=13"
time ./k-mer13

echo "Python k=14"
time python3 k-mer14.py

echo "C++ k=14"
time ./k-mer14
