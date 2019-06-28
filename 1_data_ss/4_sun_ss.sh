shortstack_path=/home/crescentejuan/Documents/mirna_mite/ShortStack
data_path=/home/crescentejuan/Documents/data/sun
genome_path=/mnt/disk/iwgsc_bowtie/Triticum_aestivum.IWGSC.dna.toplevel.fa
res_path=/home/crescentejuan/Documents/mirna_mite/data/res
locifile_path=/home/crescentejuan/Documents/data/mitesall.locifile.csv
#all sRNA and loci
cd $shortstack_path

./ShortStack --readfile \
    $data_path/SRR1195025.trimmed.fastq.gz/SRR1195025_trimmed.fq.gz $data_path/SRR1195280.trimmed.fastq.gz/SRR1195280_trimmed.fq.gz $data_path/SRR1195282.trimmed.fastq.gz/SRR1195282_trimmed.fq.gz $data_path/SRR1196022.trimmed.fastq.gz/SRR1196022_trimmed.fq.gz $data_path/SRR1196029.trimmed.fastq.gz/SRR1196029_trimmed.fq.gz $data_path/SRR1195024.trimmed.fastq.gz/SRR1195024_trimmed.fq.gz $data_path/SRR1195279.trimmed.fastq.gz/SRR1195279_trimmed.fq.gz $data_path/SRR1195281.trimmed.fastq.gz/SRR1195281_trimmed.fq.gz $data_path/SRR1195944.trimmed.fastq.gz/SRR1195944_trimmed.fq.gz $data_path/SRR1196023.trimmed.fastq.gz/SRR1196023_trimmed.fq.gz $data_path/SRR1196045.trimmed.fastq.gz/SRR1196045_trimmed.fq.gz \
    --genomefile $genome_path \
    --outdir $res_path/sun_all \
    --sort_mem 9G \
--bowtie_m all --foldsize 1000

#./ShortStack \
#    --bamfile $res_path/all/merged_alignments.bam \ 
#    --genomefile $genome_path \
#    --bowtie_m all --foldsize 1000 \
#    --locifile $locifile_path \
#    --sort_mem 20G \
#    --outdir --outdir $res_path/mites \


