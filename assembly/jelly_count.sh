#!/bin/bash
#$ -N jelly_count
#$ -q long
#$ -j y
##$ -m ea
#$ -cwd
#$ -l mf=40G
#$ -l h_vmem=40G
. $HOME/.bashrc
export TEMPDIR=/genefs/MikheyevU/temp
export TEMP=/genefs/MikheyevU/temp
export TMP=/genefs/MikheyevU/temp
export TMPDIR=/genefs/MikheyevU/temp 

jellyfish count --both-strands -m 17 -s 300000000 -c 50 -t 8  -o data/jellyfish/kmers data/trimmed/trimmed_u.fastq
jellyfish merge -v -o data/jellyfish/kmers.jf data/jellyfish/kmers*
jellyfish dump -t -c -o data/jellyfish/kmers.txt data/jellyfish/kmers.jf 
rm data/jellyfish/kmers.jf data/jellyfish/kmers_*
