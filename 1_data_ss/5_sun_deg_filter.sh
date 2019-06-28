export PATH=$PATH:/home/juan/Desktop/juan/bio/sw/fastx_toolkit_0.0.13_binaries_Linux_2.6_amd64/bin
SRNA_PATH=/home/juan/Desktop/juan/bio/mirna_mite/data/sun/degradome
cd $SRNA_PATH
for file_name in SRR1197125  SRR1197127 SRR1197126  SRR1197128
do     
    gunzip -c ${file_name}.fastq.gz | fastx_clipper -Q33 -l 21 -z -o ${file_name}.trimmed.fastq.gz
done

