export PATH=$PATH:/home/juan/Desktop/juan/bio/sw/sratoolkit.2.9.6-ubuntu64/bin
cd /home/juan/Desktop/juan/bio/mirna_mite/data/sun/degradome



fastq-dump --gzip SRR1197127
fastq-dump --gzip SRR1197126
fastq-dump --gzip SRR1197125
fastq-dump --gzip SRR1197128

fastq-dump --gzip SRR1196023
fastq-dump --gzip SRR1196045
fastq-dump --gzip SRR1196029
fastq-dump --gzip SRR1196022
fastq-dump --gzip SRR1195944
fastq-dump --gzip SRR1195282
fastq-dump --gzip SRR1195281
fastq-dump --gzip SRR1195280
fastq-dump --gzip SRR1195279
fastq-dump --gzip SRR1195024
fastq-dump --gzip SRR1195025



#md5sum *
#8e3550fb7d1f94cc7f38faab6f4dab41  SRR1197125.fastq.gz
#3647249b121752d6606fb7a700b2c989  SRR1197126.fastq.gz
#237485d3cb11b7f9ce28ba2b04d7b805  SRR1197127.fastq.gz
#dec32d428eb4022653ab859cead32bdd  SRR1197128.fastq.gz