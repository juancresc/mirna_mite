how
#run mite tracker
sh run_wheat.sh

#merge with trep


./vsearch-2.13.4/bin/vsearch \
--cluster_fast data/allmites.fasta \
--threads 1 \--strand both \
--clusters data/res/clusters/ \
--iddef 1 \
--id 0.8

#run consensous

#blast against genome

blastn -task blastn -query data/wheat/selected_candidates.fasta -subject ../data/IWGSC/42/Triticum_aestivum.IWGSC.dna.toplevel.fa -outfmt  &quot;6 qseqid sseqid qstart qend sstart send mismatch gaps pident evalue length qlen slen qcovs&quot; -evalue 100 &gt; data/wheat/selected_candidates1.csv

#filter results

python blast_filter.py -i $mites -o ${mites}.filtered2
initial: 20481575
Min len: 20351527
min treshold: 5241873
max treshold: 5204863
Min_pident: 1138457
Min qcov: 1138457
Filtering overlapped...
5
10
15
20
25
30
35
40
45
50
55
60
65
70
75
80
85
90
95
100
Non overlapped: 926258
Initial: 20481575
Min len: 20351527
Min treshold: 5241873
Max treshold: 5204863
Min pident: 1138457
Min qcov: 1138457
Non overlapped: 926258
