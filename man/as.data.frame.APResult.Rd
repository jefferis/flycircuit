% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clustering.R
\name{as.data.frame.APResult}
\alias{as.data.frame.APResult}
\title{Convert APResult (apcluster output) to dataframe}
\usage{
\method{as.data.frame}{APResult}(x, row.names = NULL, optional = FALSE, clusters, ...)
}
\arguments{
\item{x}{an \code{APResult} object.}

\item{row.names}{ignored.}

\item{optional}{logical. If \code{TRUE}, setting row names and converting column names (to syntactic names: see make.names) is optional.}

\item{clusters}{a character vector of the names of the exemplars to include.}

\item{...}{extra arguments to pass to \code{data.frame}.}
}
\value{
A \code{data.frame} with columns \code{exemplar}, \code{cluster},
  \code{idx}, \code{item}.
}
\description{
This can then be used for plots, clustering etc.
}
\seealso{
\code{\link[apcluster]{apcluster}},\code{\link[apcluster]{APResult}}
}
