export PATH=$PATH:/home/juan/Desktop/juan/bio/sw/TrimGalore-0.6.0
SRNA_PATH=/home/juan/Desktop/juan/bio/mirna_mite/data/sun/sRNA
cd $SRNA_PATH
for file_name in SRR1195024 SRR1195280 SRR1196022 SRR1195281 SRR1196023 SRR1195025 SRR1195282  SRR1196029 SRR1195279 SRR1195944 SRR1196045
do     
    trim_galore ${file_name}.fastq.gz -o ${file_name}.trimmed.fastq.gz --adapter TCGTATGCCGTCTTCTGCTTG --max_length 30 --length 18
done

