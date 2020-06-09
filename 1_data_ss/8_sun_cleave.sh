
#cat SRR1197125.trimmed.fastq | paste - - - - | sed 's/^@/>/g'| cut -f1-2 | tr '\t' '\n' > SRR1197125.fasta    

#set -x 
path_cleaveland=../sw/CleaveLand4
path_deg=../data/sun/degradome
path_mirna_fasta=../data/res/mirna.y.fasta
#path_mirna_fasta=../data/res/mirna.y.trep.fasta
transcriptome=../data/Triticum_aestivum.IWGSC.cdna.all.fa
transcriptome=../data/fixed.cdna.all.fa
plots=../data/res/sun_plots
out_deg=../data/res/sun_deg

path_gsta=../sw/CleaveLand4/GSTAr_v1-0
export PATH=$PATH:$path_gsta
path_bowtie=../sw/bowtie-1.2.2-linux-x86_64
export PATH=$PATH:$path_bowtie
path_samtools=../sw/samtools-1.2
export PATH=$PATH:$path_samtools


#for file_name in SRR1197125  SRR1197126 SRR1197127  SRR1197128
for file_name in SRR1197125 SRR1197126 SRR1197127 SRR1197128
do
    #mkdir $plots/${file_name}
    echo "${path_cleaveland}/CleaveLand4.pl -e $path_deg/${file_name}.trimmed.21.fasta -u $path_mirna_fasta -n $transcriptome -t -o $plots/${file_name} > ${out_deg}_${file_name} 2> ${out_deg}_${file_name}.log"
done

#${path_cleaveland}/CleaveLand4.pl -e $path_deg/SRR1197125.trimmed.fastq -u $path_mirna_fasta -n $transcriptome -t -o $plots > $out_deg