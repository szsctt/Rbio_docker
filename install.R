install.packages(c("cowplot", "writexl", "wesanderson", "ggrepel", "DT", "tidyverse", 
					"BiocManager", "circlize", "furrr", "kableExtra", "magick", "multidplyr",
					"patchwork", "modelr", "pheatmap", "plotly", "tidyquant", "ggwordcloud", 
					"wordcloud", "wordcloud2", "markdown", "rmarkdown", "ggplotify", "httr", 
					"jsonlite", "reutils", "splus2R"))

BiocManager::install(version="3.14")
BiocManager::install(c("geneRxCluster", "karyoploteR", "biomaRt", "GenomicRanges", "edgeR", "DESeq2", "TxDb.Hsapiens.UCSC.hg38.knownGene", "org.Hs.eg.db"))
