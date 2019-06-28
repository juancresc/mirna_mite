# Load libraries
source("https://bioconductor.org/biocLite.R")
#install.packages('gplots')
biocLite("DESeq2")
library("DESeq2")

alpha <- 0.05
data_path <- "/home/juan/Desktop/juan/bio/mirna_mite/data/res/sun_all/counts.fixed.csv"
result_file <- "/home/juan/Desktop/juan/bio/mirna_mite/data/res/sun_all/sRNA_DATs.csv"
# Load data
countdata <- read.table(data_path,header=TRUE,sep="\t")
#DROP unique miRNA clusters
# I don't know why I have to do this first, otherwise RStudio hangs
countdata <- countdata[!is.na(countdata$Name),]

row.names(countdata) <- countdata$Name
countdata <- subset(countdata, select = -c(main))
countdata <- subset(countdata, select = -c(Name))
countdata <- subset(countdata, select = -c(Locus))
countdata <- as.matrix(countdata)
head(countdata)

# Assign condition (first four are controls, second four contain the expansion)
(condition <- factor(c("control","control","treatment","treatment")))

# Analysis with DESeq2 ----------------------------------------------------

# Create a coldata frame and instantiate the DESeqDataSet. See ?DESeqDataSetFromMatrix
(coldata <- data.frame(row.names=colnames(countdata), condition))
levels(coldata$condition)
coldata
dds <- DESeqDataSetFromMatrix(countData=countdata, colData=coldata, design=~condition)
dds

# Run the DESeq pipeline
dds <- DESeq(dds)

# Get differential expression results
#res <- results(dds)
res <- results(dds, alpha=alpha)
#res <- res[res$log2FoldChange >= 1, ]
res <- res[!is.na(res$padj), ]
res <- res[res$padj <= alpha, ]
table(res$padj <= alpha)

## Order by adjusted p-value
res <- res[order(res$padj), ]


## Merge with normalized count data
resdata <- merge(as.data.frame(res), as.data.frame(counts(dds, normalized=TRUE)), by="row.names", sort=FALSE)
names(resdata)[1] <- "Gene"
head(resdata)
## Write results
write.csv(resdata, file=result_file, row.names=FALSE)


