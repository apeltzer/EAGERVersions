#!/bin/bash
#This script determines the installed versions of each software tool within the EAGER pipeline and tells the user about it. 

#Getting them systemwide without archlinux support
#EAGER-GUI and CLI already do that with the logfile anyways
echo "GATK Version:"
gatk --version
echo "Java Version:"
java -version
echo "DeDup Version:"
dedup -h | grep "DeDup v."
AdapterRemoval --version
echo "ClipAndMerge Version:"
ClipAndMerge 2>&1 | grep -e "ClipAndMerge (v."
echo "FastQC Version:"
fastqc -version
echo "Preseq Version:"
preseq -version 2>&1| grep -e "Version: "
echo "VCF2Genome Version:"
vcf2genome 2>&1 | grep -e "(v. "
echo "BWA Version:"
bwa 2>&1 | grep -e "Version"
echo "mapDamage Version: "
mapDamage --version
echo "GNU R Version:"
R --version | grep "R version"
#ReportTable needs fix
echo "Bowtie2 Version:"
bowtie2 --version|grep -e "version"
echo "ANGSD Version:"
angsd  2>&1| grep -e "version:" -m 1
