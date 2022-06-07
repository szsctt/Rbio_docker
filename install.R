install.packages(c("cowplot", "writexl", "wesanderson", "ggrepel", "DT", "tidyverse", 
					"BiocManager", "circlize", "furrr", "kableExtra", "magick", "multidplyr",
					"patchwork", "modelr", "pheatmap", "plotly", "tidyquant", "ggwordcloud", 
					"wordcloud", "wordcloud2", "markdown", "rmarkdown", "ggplotify", "httr", "jsonlite", "devtools"))

BiocManager::install(version="3.14")
BiocManager::install(c("geneRxCluster", "karyoploteR", "biomaRt", "GenomicRanges", "edgeR", "DESeq2"))

devtools::intstall_github("serratus-bio/tantalus")

