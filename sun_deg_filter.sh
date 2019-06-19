export PATH=$PATH:/home/juan/Desktop/juan/bio/sw/TrimGalore-0.6.0
SRNA_PATH=/home/juan/Desktop/juan/bio/mirna_mite/data/sun/degradome
cd $SRNA_PATH
for file_name in SRR1197125  SRR1197127 SRR1197126  SRR1197128
do     
    trim_galore ${file_name}.fastq.gz -o ${file_name}.trimmed.fastq.gz --adapter TCGTATGCCGTCTTCTGCTTG
done

