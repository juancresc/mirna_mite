set -x 
shortstack_path=/home/juan/Desktop/juan/bio/mirna_mite/sw
data_path=/home/juan/Desktop/juan/bio/mirna_mite/data/sun/sRNA
genome_path=/home/juan/Desktop/juan/bio/data/IWGSC/42/Triticum_aestivum.IWGSC.dna.toplevel.fa
res_path=/home/juan/Desktop/juan/bio/mirna_mite/data/res
cd $shortstack_path
for file_name in SRR1195024 SRR1195280 SRR1196022 SRR1195281 SRR1196023 SRR1195025 SRR1195282  SRR1196029 SRR1195279 SRR1195944 SRR1196045
do
    ./ShortStack --readfile \
        $data_path/$file_name.trimmed.fastq.gz/${file_name}_trimmed.fq.gz \
        --genomefile $genome_path \
        --outdir $res_path/sun_$file_name \
        --sort_mem 9G \
    --bowtie_m all --foldsize 1000
done