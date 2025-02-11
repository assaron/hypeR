% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hyp_dots.R
\name{hyp_dots}
\alias{hyp_dots}
\title{Visualize hyp/multihyp objects as a dots plot}
\usage{
hyp_dots(hyp_obj, top = 20, abrv = 50, sizes = TRUE,
  pval_cutoff = 1, fdr_cutoff = 1, val = c("fdr", "pval"),
  title = "", multihyp_titles = TRUE, show_plots = TRUE,
  return_plots = FALSE)
}
\arguments{
\item{hyp_obj}{A hyp or multihyp object}

\item{top}{Limit number of genesets shown}

\item{abrv}{Abbreviation length of geneset labels}

\item{sizes}{Size dots by geneset sizes}

\item{pval_cutoff}{Filter results to be less than pval cutoff}

\item{fdr_cutoff}{Filter results to be less than fdr cutoff}

\item{val}{Choose significance value e.g. c("fdr", "pval")}

\item{title}{Plot title}

\item{multihyp_titles}{Use false to disable plot titles for multihyp objects}

\item{show_plots}{An option to show plots}

\item{return_plots}{An option to return plots}
}
\value{
A ggplot object
}
\description{
Visualize hyp/multihyp objects as a dots plot
}
\examples{
gsets <- hyperdb_fetch(type="gsets", "KEGG_2019_Human")

signature <- c("IDH3B","DLST","PCK2","CS","PDHB","PCK1","PDHA1","LOC642502",
               "PDHA2","LOC283398","FH","SDHD","OGDH","SDHB","IDH3A","SDHC",
               "IDH2","IDH1","OGDHL","PC","SDHA","SUCLG1","SUCLA2","SUCLG2")

# Perform hyper enrichment
hyp_obj <- hypeR(signature, gsets, bg=2522, fdr_cutoff=0.05)

# Visualize
hyp_dots(hyp_obj, top=3, val="fdr")

}
