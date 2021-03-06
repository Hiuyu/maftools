% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/forestPlot.R
\name{forestPlot}
\alias{forestPlot}
\title{Draw forest plot for differences betweeen cohorts.}
\usage{
forestPlot(mafCompareRes, pVal = 0.05, show = NULL, color = NULL,
  file = NULL, width = 5, height = 6)
}
\arguments{
\item{mafCompareRes}{results from \code{\link{mafCompare}}}

\item{pVal}{p-value threshold. Default 0.05.}

\item{show}{can be either \code{stat} or \code{pval}}

\item{color}{vector of colors for cohorts. Default NULL.}

\item{file}{basename for output file. Plot will saved to an output pdf.}

\item{width}{width of plot to be generated}

\item{height}{height of plot to be generated}
}
\value{
ggplot object of the plot.
}
\description{
Draw forest plot for differences betweeen cohorts.
}
\details{
Plots results from \code{link{mafCompare}} as a forest plot with x-axis as log10 converted odds ratio and differentially mutated genes on y-axis.
}
\examples{
##Primary and Relapse APL
primary.apl <- system.file("extdata", "APL_primary.maf.gz", package = "maftools")
relapse.apl <- system.file("extdata", "APL_relapse.maf.gz", package = "maftools")
##Read mafs
primary.apl <- read.maf(maf = primary.apl)
relapse.apl <- read.maf(maf = relapse.apl)
##Perform analysis and draw forest plot.
pt.vs.rt <- mafCompare(m1 = primary.apl, m2 = relapse.apl, m1Name = 'Primary',
m2Name = 'Relapse', minMut = 5)
forestPlot(mafCompareRes = pt.vs.rt, show = 'stat')
}
\seealso{
\code{\link{mafCompare}}
}
