# hypeR
Geneset enrichment analysis based on hyper-geometric test

[![](https://img.shields.io/github/last-commit/montilab/hypeR.svg)](https://github.com/montilab/hypeR/commits/master)
[![](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)


### Install
```R
library(devtools)

devtools::install_github("montilab/hypeR")
```

### Usage
```R
library(hypeR)

# Genes involed in tricarboxylic acid cycle
symbols <- c("IDH3B","DLST","PCK2","CS","PDHB","PCK1","PDHA1","LOC642502",
             "PDHA2","LOC283398","FH","SDHD","OGDH","SDHB","IDH3A","SDHC",
             "IDH2","IDH1","OGDHL","PC","SDHA","SUCLG1","SUCLA2","SUCLG2")

# Gensets available
db.info()

# Get genesets
REACTOME <- db.get("C2.CP.REACTOME")

# Perform hyper enrichment
hyp <- hypeR(symbols, REACTOME, bg=2522, fdr=0.05, verbose=T)

# Interactive table
hyp.show(hyp)

# Save enriched pathways
hyp.to.excel(hyp, file.path="pathways.xlsx")

# Visualize
hyp.plot(hyp, top=5)
```