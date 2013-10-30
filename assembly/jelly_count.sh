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

jellyfish count --both-strands -m 17 -s 300000000 -c 50 -t 8  -o data/jellyfish/kmers data/trimmed/trimmed_?.fastq
jellyfish merge -v -o data/jellyfish/kmers.jf data/jellyfish/kmers_*
jellyfish histo -o data/jellyfish/histo.txt data/jellyfish/kmers.jf
rm data/jellyfish/kmers_*