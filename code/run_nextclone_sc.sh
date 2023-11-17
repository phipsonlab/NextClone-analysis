#!/bin/bash

basedir=/nextclone_dev/07_analysis/pilot_dataset/02_run_nextclone/

module load nextflow

nextflow pull phipsonlab/Nextclone

# need the -r main
# see: https://github.com/nextflow-io/nextflow/issues/1670
nextflow run phipsonlab/Nextclone \
    -r main \
    --mode scRNAseq \
    --n_chunks 230 \
    --publish_dir $basedir/output_20231117 \
    --clone_barcodes_reference $basedir/data/known_barcodes_unique.txt \
    --scrnaseq_bam_files $basedir/data/split_sam_attempt/split_sam_v2/merged/



