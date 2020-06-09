import pandas as pd

def blast2fa(blast_csv, output):
    '''
    Needs documentation
    '''
    df = pd.read_csv(blast_csv,sep="\t", header=None)
    df.columns = ['qseqid','sseqid','qstart','qend','sstart','send','mismatch','gaps','pident','evalue','length','qlen','slen','qcovs','score']
    if output:
        df.groupby('qseqid').head(1).to_csv(output, sep="\t", index=None)
    else:
        return df.groupby('qseqid').head(1)

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()#pylint: disable=invalid-name
    parser.add_argument("-a", "--allhits", help="Blast file (.csv format tab-delimited)", required=True)
    parser.add_argument("-o", "--output", help="Output file in .fasta format", )
    args = parser.parse_args()#pylint: disable=invalid-name
    blast1hit(args.allhits, args.output)