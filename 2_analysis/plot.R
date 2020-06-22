if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("Gviz")


library(Gviz)
library(GenomicRanges)
