shortstack_path=/home/juan/Desktop/juan/bio/mrcv/sw/ShortStack
data_path=/home/juan/Desktop/juan/bio/mirna_mite/data/sun/sRNA
genome_path=/home/juan/Desktop/juan/bio/data/IWGSC/42/Triticum_aestivum.IWGSC.dna.toplevel.fa
res_path=/home/juan/Desktop/juan/bio/mirna_mite/data/res
locifile_path=/home/juan/Desktop/juan/bio/mirna_mite/data/mitesall.locifile.csv
#all sRNA and loci
cd $shortstack_path

./ShortStack --readfile \
    $data_path/SRR1195024.clean.fastq.gz \
    --genomefile $genome_path \
    --outdir $res_path/sun_all \
    --sort_mem 45G \
--bowtie_m all --foldsize 1000

#./ShortStack \
#    --bamfile $res_path/all/merged_alignments.bam \ 
#    --genomefile $genome_path \
#    --bowtie_m all --foldsize 1000 \
#    --locifile $locifile_path \
#    --sort_mem 20G \
#    --outdir --outdir $res_path/mites \


