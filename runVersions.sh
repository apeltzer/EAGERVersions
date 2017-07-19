#!/bin/bash
#This script determines the installed versions of each software tool within the EAGER pipeline and tells the user about it. 

#pacman -Q eager-gui eager-cli gatk jdk dedup circularmapper clipandmerge fastqc preseq vcf2genome bwa mapdamage fastx_toolkit htslib eagerstat r eager-reportengine bowtie2 picard-tools stampy angsd schmutzi

#Getting them systemwide without archlinux support
#EAGER-GUI and CLI already do that with the logfile anyways
gatk --version
java -version
dedup -h | grep "DeDup v."
ClipAndMerge 2>&1 | grep -e "ClipAndMerge (v."
fastqc -version
preseq -version
vcf2genome 2>&1 | grep -e "(v. "
bwa 2>&1 | grep -e "Version" -e "Program:"
mapDamage --version
R --version | grep "R version"
ReportTable
bowtie2 --version|grep -e "version"
angsd | grep -e "version:" -m 1
