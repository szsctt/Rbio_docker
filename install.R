
install.packages(c("cowplot", "writexl", "wesanderson", "ggrepel", "DT", "tidyverse", 
		   "BiocManager", "circlize", "furrr", "kableExtra", "magick", "multidplyr",
		   "patchwork", "modelr", "pheatmap", "plotly", "tidyquant", "ggwordcloud", 
		   "markdown", "rmarkdown", "ggplotify", "httr", "ggbeeswarm",
		   "jsonlite", "reutils", "here", "ggforce", "rstatix", "argparse", "seqinr",
		   "umap", "tm", "SnowballC", "ggtext", "gtools", "Peptides", "dbscan", 
                    "figpatch", "RMariaDB"))

BiocManager::install(version="3.18", ask=FALSE)
BiocManager::install(c("geneRxCluster", "karyoploteR", "biomaRt", "GenomicRanges", "edgeR", 
			"DESeq2", "TxDb.Hsapiens.UCSC.hg38.knownGene", "org.Hs.eg.db", "topGO",
                        "Rgraphviz", "GO.db", "ggtree", "rhdf5", "AnnotationHub"))
