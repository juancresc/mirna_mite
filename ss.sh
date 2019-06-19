shortstack_path=/Users/juan/Documents/manu/dev/vms/bio/mirna_mite/scripts/ShortStack
data_path=/Volumes/toshiba/temp/data/sRNASeq
genome_path=/Volumes/toshiba/temp/data/wheat/Triticum_aestivum.IWGSC.dna.toplevel.fa
res_path=/Users/juan/Documents/manu/dev/vms/bio/mirna_mite/data
locifile_path=/Volumes/toshiba/temp/data/mitesall.locifile.csv
#all sRNA and loci
cd $shortstack_path

./ShortStack --readfile \
    $data_path/21dpiR1C.trimmed.fq.gz \
    $data_path/21dpiR3C.trimmed.fq.gz \
    $data_path/21dpiR1T.trimmed.fq.gz \
    $data_path/21dpiR3T.trimmed.fq.gz \
    --genomefile $genome_path \
    --outdir $res_path/1_all \
    --sort_mem 10G \
--bowtie_m all --foldsize 1000

./ShortStack \
    --bamfile $res_path/all/merged_alignments.bam \
    --genomefile $genome_path \
    --bowtie_m all --foldsize 1000 \
    --locifile $locifile_path \
    --sort_mem 3500M \
    --outdir --outdir $res_path/1_mites \
