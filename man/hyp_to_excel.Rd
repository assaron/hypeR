% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hyp_to_excel.R
\name{hyp_to_excel}
\alias{hyp_to_excel}
\title{Export hyp/multihyp object to excel}
\usage{
hyp_to_excel(hyp_obj, file_path, cols = NULL)
}
\arguments{
\item{hyp_obj}{A hyp or multihyp object}

\item{file_path}{Output file path}

\item{cols}{Dataframe columns to include}
}
\value{
None
}
\description{
Export hyp/multihyp object to excel
}
\examples{
gsets <- hyperdb_fetch(type="gsets", "KEGG_2019_Human")

signature <- c("IDH3B","DLST","PCK2","CS","PDHB","PCK1","PDHA1","LOC642502",
               "PDHA2","LOC283398","FH","SDHD","OGDH","SDHB","IDH3A","SDHC",
               "IDH2","IDH1","OGDHL","PC","SDHA","SUCLG1","SUCLA2","SUCLG2")

# Perform hyper enrichment
hyp_obj <- hypeR(signature, gsets, bg=2522, fdr_cutoff=0.05)

# Export
hyp_to_excel(hyp_obj, file_path="pathways.xlsx")

}
