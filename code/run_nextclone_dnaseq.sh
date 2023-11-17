#!/bin/bash

basedir=/nextclone_dev/07_analysis/ngs_v1/run_nextclone

module load nextflow

nextflow pull phipsonlab/Nextclone

# need the -r main
# see: https://github.com/nextflow-io/nextflow/issues/1670
nextflow run phipsonlab/Nextclone \
    -r main \
    --mode DNAseq \
    --n_chunks 30 \
    --publish_dir $basedir/output_20231113 \
    --clone_barcodes_reference $basedir/data/known_barcodes_unique.txt \
    --dnaseq_fastq_files $basedir/data/dnaseq_fastq_files/


