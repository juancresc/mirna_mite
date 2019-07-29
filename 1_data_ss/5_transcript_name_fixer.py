    from Bio import SeqIO
from random import shuffle
from Bio.SeqRecord import SeqRecord
from Bio.Seq import Seq

def fa_name_fix(input, output):
    fasta_seq = SeqIO.parse(input, 'fasta')
    total_buff = []
    for record in fasta_seq:
        seq = SeqRecord(record.seq, id=record.id, description="")
        total_buff.append(seq)
    SeqIO.write(total_buff, output, "fasta")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()#pylint: disable=invalid-name
    parser.add_argument("-i", "--input", help="Sequence file (.fasta)", required=True)
    parser.add_argument("-o", "--output", help="Sequence file (.fasta)", required=True)
    args = parser.parse_args()#pylint: disable=invalid-name
    fa_name_fix(args.input, args.output)