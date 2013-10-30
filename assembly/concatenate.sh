#!/bin/bash
#$ -q short
#$ -j y
#$ -cwd
#$ -l h_vmem=4G
#$ -l virtual_free=4G
#$ -N gather
. $HOME/.bashrc
export TEMPDIR=/genefs/MikheyevU/temp
export TMPDIR=/genefs/MikheyevU/temp
export TEMP=/genefs/MikheyevU/temp
export TMP=/genefs/MikheyevU/temp

cat data/trimmed/*unpaired*.fq > data/trimmed/trimmed_u.fastq
cat data/trimmed/*val_1.fq  > data/trimmed/trimmed_1.fastq
cat data/trimmed/*val_2.fq  > data/trimmed/trimmed_2.fastq