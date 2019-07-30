
#cat SRR1197125.trimmed.fastq | paste - - - - | sed 's/^@/>/g'| cut -f1-2 | tr '\t' '\n' > SRR1197125.fasta    

set -x 
path_cleaveland=/home/juan/Desktop/juan/bio/mirna_mite/sw/CleaveLand4
path_deg=/home/juan/Desktop/juan/bio/mirna_mite/data/sun/degradome
path_mirna_fasta=/home/juan/Desktop/juan/bio/mirna_mite/data/res/mirna.y.fasta
#path_mirna_fasta=/home/juan/Desktop/juan/bio/mirna_mite/data/res/mirna.y.trep.fasta
transcriptome=/home/juan/Desktop/juan/bio/mirna_mite/data/Triticum_aestivum.IWGSC.cdna.all.fa
transcriptome=/home/juan/Desktop/juan/bio/mirna_mite/data/fixed.cdna.all.fa
plots=/home/juan/Desktop/juan/bio/mirna_mite/data/res/sun_plots
out_deg=/home/juan/Desktop/juan/bio/mirna_mite/data/res/sun_deg

path_gsta=/home/juan/Desktop/juan/bio/mirna_mite/sw/CleaveLand4/GSTAr_v1-0
export PATH=$PATH:$path_gsta
path_bowtie=/home/juan/Desktop/juan/bio/sw/bowtie-1.2.2-linux-x86_64
export PATH=$PATH:$path_bowtie
path_samtools=/home/juan/Desktop/juan/bio/sw/samtools-0.1.19
path_samtools=/home/juan/Desktop/juan/bio/sw/samtools-1.2
export PATH=$PATH:$path_samtools

file_name=SRR1197126
#mkdir $plots/${file_name
${path_cleaveland}/CleaveLand4.pl -e $path_deg/${file_name}.trimmed.21.fasta -u $path_mirna_fasta -n $transcriptome -t -o $plots/${file_name} > ${out_deg}/${file_name} 2> ${out_deg}/${file_name}.log

#for file_name in SRR1197125  SRR1197126 SRR1197127  SRR1197128
#for file_name in SRR1197125 SRR1197126 SRR1197127 SRR1197128
#do
#    mkdir $plots/${file_name}
#    ${path_cleaveland}/CleaveLand4.pl -e $path_deg/${file_name}.trimmed.21.fasta -u $path_mirna_fasta -n $transcriptome -t -o $plots/${file_name} > ${out_deg}_${file_name} 2> ${out_deg}_${file_name}.log
#done

#${path_cleaveland}/CleaveLand4.pl -e $path_deg/SRR1197125.trimmed.fastq -u $path_mirna_fasta -n $transcriptome -t -o $plots > $out_deg