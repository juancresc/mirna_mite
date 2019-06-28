path_cleaveland=/home/juan/Desktop/juan/bio/mirna_mite/sw/CleaveLand4
path_deg=/home/juan/Desktop/juan/bio/mirna_mite/data/sun/degradome
path_gsta=/home/juan/Desktop/juan/bio/mirna_mite/sw/CleaveLand4/GSTAr_v1-0
miRNAs=
transcriptome=
plots=
out_deg=
export PATH=$PATH:$path_gsta
for file_name in SRR1197125  SRR1197127 SRR1197126  SRR1197128
do
    ./${path_cleaveland}/CleaveLand4.pl -e $path_deg/$file_name.trimmed.fastq.gz -u $miRNAs -n $transcriptome -t -o $plots > $out_deg
done