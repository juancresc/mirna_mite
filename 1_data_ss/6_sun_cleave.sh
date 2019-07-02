set -x 
path_cleaveland=/home/juan/Desktop/juan/bio/mirna_mite/sw/CleaveLand4
path_deg=/home/juan/Desktop/juan/bio/mirna_mite/data/sun/degradome
path_gsta=/home/juan/Desktop/juan/bio/mirna_mite/sw/CleaveLand4/GSTAr_v1-0
path_mirna_fasta=/home/juan/Desktop/juan/bio/mirna_mite/data/res/mirnas.y.fasta
transcriptome=/home/juan/Desktop/juan/bio/data/IWGSC/42/Triticum_aestivum.IWGSC.cdna.all.fa
plots=/home/juan/Desktop/juan/bio/mirna_mite/data/res/sun_plots
out_deg=/home/juan/Desktop/juan/bio/mirna_mite/data/res/sun_deg
export PATH=$PATH:$path_gsta
for file_name in SRR1197125  SRR1197127 SRR1197126  SRR1197128
do
    #gunzip $path_deg/$file_name.trimmed.fastq.gz > $path_deg/$file_name.trimmed.fastq
    ${path_cleaveland}/CleaveLand4.pl -e $path_deg/$file_name.trimmed.fastq -u $path_mirna_fasta -n $transcriptome -t -o $plots > $out_deg
done