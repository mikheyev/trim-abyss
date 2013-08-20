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

cat trimmed/*unpaired*.fq | pigz > trimmed_u.fq.gz
cat trimmed/*val_1.fq  | pigz > trimmed_1.fq.gz
cat trimmed/*val_2.fq  | pigz > trimmed_2.fq.gz