\name{rankDist}
\alias{rankDist}
\title{Identify the best rank cut-off for significant CpGs.}
\usage{
rankDist(ranks, draw_intersects, noise_perc, mode, return.plot)
}
\description{
Automated rank cut-off estimator for input CpGs.}
\arguments{
\item{ranks}{getPCRanks output data frame.}
\item{draw_intersects}{T/F whether to draw intersect lines if return.plot=T}
\item{noise_perc}{Automatic=0.5, numeric between 0 and 1. Fraction of ranks to use to model the background noise. Not recommended to play with this value. Increasing/decreasing returns a looser/stricter threshold, respectively.}
\item{mode}{"intersect" or "strict", determine cut-off with "intersect" or "strict" method. "Strict" is recommended for sets with lower variability}
\item{return.plot}{T/F, whether to return a plot or a numeric}
}
\value{
If \code{return.plot=T}, a \code{grob} plotting the estimated \code{cutoff} on a plot of absolute eigenvector score vs. absolute rank order is returned. Otherwise, a \code{numeric} of the estimated cut-off is returned.
}
\examples{
ranks <- getPCRanks(eigen, IDs = c("trt", "ctl"), PC = 1)
rankDist(ranks, mode="intersect")
}
