% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hyper_enrichment.R
\name{.hyper_enrichment}
\alias{.hyper_enrichment}
\title{Overrepresentation test via hyper-geometric distribution}
\usage{
.hyper_enrichment(signature, gsets, bg = length(unique(unlist(gsets))),
  do.plots = TRUE)
}
\arguments{
\item{signature}{A vector of symbols}

\item{gsets}{A list of genesets}

\item{bg}{Size of background population genes}

\item{do.plots}{Use true to generate plots}
}
\value{
A list of data and plots
}
\description{
Overrepresentation test via hyper-geometric distribution
}
\keyword{internal}
