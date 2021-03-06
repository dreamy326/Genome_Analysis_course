#  /home/nanxi/Genome_anaysis/code/01_DNA_long_assembly_canu.job
#  batch script:



#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 20:00:00
#SBATCH -J Dna_long_assembly_Canu_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user nanxing.liu.3019@student.uu.se

module load bioinfo-tools 
module load canu

canu \
 -p DNA_pacbio_assembly_11 -d /home/nanxi/Genome_anaysis/analyses/01_DNA_assembly \                                 # output
 genomeSize=24m \
 useGrid=false \
 -pacbio-raw /home/nanxi/Genome_anaysis/data/raw_data/4_Tean_Teh_2017/pacbio_data/SRR6037732_scaffold_11.fq.gz      # input

