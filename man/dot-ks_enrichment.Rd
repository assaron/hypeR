% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ks_enrichment.R
\name{.ks_enrichment}
\alias{.ks_enrichment}
\title{Enrichment test via one-sided Kolmogorov–Smirnov test}
\usage{
.ks_enrichment(signature, gsets, weights = NULL, weights.pwr = 1,
  absolute = FALSE, do.plots = TRUE)
}
\arguments{
\item{signature}{A vector of ranked symbols}

\item{gsets}{A list of genesets}

\item{weights}{Weights for weighted score (Subramanian et al.)}

\item{weights.pwr}{Exponent for weights (Subramanian et al.)}

\item{absolute}{Takes max-min score rather than the max deviation from null}

\item{do.plot}{Use true to generate plot}
}
\value{
A list of data and plots
}
\description{
Enrichment test via one-sided Kolmogorov–Smirnov test
}
\keyword{internal}
