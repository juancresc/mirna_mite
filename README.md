This repo is divided into steps:

- 1_data_ss
    - 1_mrcv_ss.sh
        Will run shortstack in "Mal de Rio Cuarto" smallRNA data 
        https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5423983/
    - 2_sun_get_data.sh
        Will download smallRNA data from Sun et al.
        https://bmcplantbiol.biomedcentral.com/articles/10.1186/1471-2229-14-142
    - 3_sun_filter.sh
        Will filter sun adapters
    - 4_sun_ss.sh and 5_sun_ss_separated.sh
        will run shortstack with Sun et al. data. Only results from 4 will be used in further analysis.
    - 6_transcript_name_fixer.py
        will remove descriptions from wheat cDNA because of a Cleaveland requirement
    - 7_sun_deg_filter.sh
        Will filter Sun et al. degradome data
    - 8_sun_cleave.sh
        Run cleaveland with Sun et al. data
- 1_mites
    - create_unique_consensous.ipynb
        Takes a fasta file with MITEs sequences and creates one consensous file using vsearch


- 2_analysis
    - 1_analysis.ipynb
        Will do the main analysis and counting in miRNA production sites using Shortstack outputs, MITEs blast and genomic annotation

    - 2_cleavage.ipynb
        Uses Cleaveland and psRNATargetFinder outputs to analyse cleavage of targets data

References:
https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0019212#
https://www.annualreviews.org/doi/10.1146/annurev.arplant.57.032905.105218
https://www.ncbi.nlm.nih.gov/pubmed/19037014
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2327354/