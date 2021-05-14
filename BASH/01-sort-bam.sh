#!/bin/sh
SAM_DIR=/home/ec2-user/fs1/SOFTWARE/samtools-1.11
BAM_DIR=/home/ec2-user/fs1/DATA/BAM
FASTA_DIR=/home/ec2-user/fs1/DATA/FASTA/hg19

for file in /home/ec2-user/fs1/DATA/BAM/*.bam
do
    fbname=$(basename "$file" | cut -d. -f1)
    echo "$fbname"
    #if [[ -f $BAM_DIR/$fbname.bam  ]]; then
    #    continue
    #fi
    echo "$SAM_DIR/samtools sort $file > $BAM_DIR/$fbname.sorted.bam"
    $SAM_DIR/samtools sort $file > $BAM_DIR/$fbname.sorted.bam
done
