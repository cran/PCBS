\name{lmIntx}
\alias{lmIntx}
\title{
PC-Intersect nested function.
}
\description{
Finds the intersection point of two linear regression models, lm().
}
\usage{
lmIntx(fit1, fit2, rnd=2)
}
\arguments{
\item{fit1}{lm() model 1}
\item{fit2}{lm() model 2}
\item{rnd}{number of significant figures}
}
\value{
Returns a 2 column \code{data.frame} of one row, containing the x and y coordinates of the intersection point of the input models.
}
