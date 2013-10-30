#!/bin/bash
#$ -q short
#$ -j y
#$ -cwd
#$ -l h_vmem=4G
#$ -l virtual_free=4G
#$ -N trim
. $HOME/.bashrc
export TEMPDIR=/genefs/MikheyevU/temp
export TMPDIR=/genefs/MikheyevU/temp
export TEMP=/genefs/MikheyevU/temp
export TMP=/genefs/MikheyevU/temp

a=(/genefs/SQC/Illumina/131024_SN1077_0130_BH7PEDADXX/Unaligned/Project_H7PEDADXX/Sample_lane2/*R1*gz)
b=(/genefs/SQC/Illumina/131024_SN1077_0130_BH7PEDADXX/Unaligned/Project_H7PEDADXX/Sample_lane2/*R2*gz)
f=${a[$SGE_TASK_ID-1]}
r=${b[$SGE_TASK_ID-1]}

trim_galore --dont_gzip --length 60 --retain_unpaired --output_dir ./data/trimmed --paired $f $r

cp $f ./data/raw
cp $r ./data/raw