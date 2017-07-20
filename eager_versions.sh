#!/bin/bash
#This script determines the installed versions of each software tool within the EAGER pipeline and tells the user about it. 

#$1 = output file to write to
#Getting them systemwide without archlinux support
#EAGER-GUI and CLI already do that with the logfile anyways
echo "GATK Version:" >> $1
gatk --version 2>&1 | grep -v "JAVA" >> $1 
echo "Java Version:" >> $1 
java -version 2>&1 | grep "version" >> $1
echo "DeDup Version:" >> $1
dedup -h 2>&1 | grep "DeDup v." >> $1
echo "AdapterRemoval Version:" >> $1
AdapterRemoval --version 2>&1|grep -e "ver." >> $1 
echo "ClipAndMerge Version:" >> $1 
ClipAndMerge 2>&1 | grep -e "ClipAndMerge (v." >> $1
echo "CircularMapper Version:" >> $1
realignsamfile -h | grep -e "usage" 2>&1  >> $1
echo "FastQC version:" >> $1
fastqc -version 2>&1 >> $1
echo "Preseq Version:" >>$1
preseq -version 2>&1| grep -e "Version: " >> $1
echo "VCF2Genome Version:" >> $1
vcf2genome 2>&1 | grep -e "(v. " >> $1
echo "BWA Version:" >> $1
bwa 2>&1 | grep -e "Version" >> $1
echo "mapDamage Version: " >> $1
mapDamage --version 2>&1 >> $1
echo "GNU R Version:" >> $1
R --version | grep "R version" 2>&1 >> $1
echo "ReportTable Version:" >> $1
ReportTable 2>&1|grep "version" >> $1
echo "Bowtie2 Version:" >> $1
bowtie2 --version|grep -e "s version" 2>&1  >> $1
echo "ANGSD Version:" >> $1
angsd  2>&1| grep -e "version:" -m 1 >> $1
