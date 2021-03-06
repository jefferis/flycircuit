% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting.R
\name{dpscan}
\alias{dpscan}
\title{Scan through a set of flycircuit neurons}
\usage{
dpscan(
  neurons,
  db = NULL,
  col = "red",
  Verbose = T,
  Wait = T,
  sleep = 0.1,
  extrafun = NULL,
  selected_file = NULL,
  selected_col = "green",
  yaml = TRUE,
  ...
)
}
\arguments{
\item{neurons}{vector of flycircuit identifiers to plot *(anything that 
\code{\link{fc_gene_name}} understands)}

\item{db}{the neuronlist containing the neurons. Defaults to the list named 
by \code{options("nat.default.neuronlist")}.}

\item{col}{the colour with which to plot the neurons (default \code{'red'}).}

\item{Verbose}{logical indicating that info about each selected neuron should
be printed (default \code{TRUE}).}

\item{Wait}{logical indicating that there should be a pause between each 
displayed neuron.}

\item{sleep}{time to pause between each displayed neuron when 
\code{Wait=TRUE}.}

\item{extrafun}{an optional function called when each neuron is plotted, with
args \code{gene_name} and \code{selected}.}

\item{selected_file}{an optional path to a \code{yaml} file that already 
contains a selection.}

\item{selected_col}{the color in which selected neurons (such as those 
specified in \code{selected_file}) should be plotted.}

\item{yaml}{a logical indicating that selections should be saved to disk in 
\code{yaml} rather than \code{rda} format.}

\item{...}{extra arguments to pass to \code{\link{plot3dfc}}.}
}
\value{
A character vector of names of any selected neurons, of length 0 if 
  none selected.
}
\description{
Can also choose to select specific neurons along the way and navigate 
forwards and backwards. NB this is simply a wrapper for 
\code{nat::\link[nat]{nlscan}}, with the additional function of converting all 
neuron identifiers to standard flycircuit identifiers.
}
\examples{
\dontrun{
# numeric idids, specifying db explicitly
dpscan(c(1024L, 10616L, 8399L), db=kcs20)

# using an option to set db
op<-options(nat.default.neuronlist='kcs20')
dpscan(c("fru-M-500112", "Gad1-F-900005", "Gad1-F-100010"))
options(op)

}
}
\seealso{
\code{\link[nat]{nlscan}}, \code{\link{fc_gene_name}}
}
