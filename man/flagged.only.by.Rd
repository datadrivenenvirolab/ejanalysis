% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/flagged.only.by.R
\name{flagged.only.by}
\alias{flagged.only.by}
\title{flagged.only.by}
\usage{
flagged.only.by(x, cutoff = 8, or.tied = FALSE, below = FALSE)
}
\arguments{
\item{x}{Data.frame or matrix of numbers to be compared to cutoff value.}

\item{cutoff}{The numeric threshold or cutoff to which numbers are compared. Default is 8! Usually one number, but can be a vector of same length as number of rows, in which case each row can use a different cutoff.}

\item{or.tied}{Logical. Default is FALSE, which means we check if number in x is greater than the cutoff (>). If TRUE, check if greater than or equal (>=).}

\item{below}{Logical. Default is FALSE. If TRUE, uses > or >= cutoff. If FALSE, uses < or <= cutoff.}
}
\value{
Returns a logical matrix the same size as x.
}
\description{
Flag which cells are the only one in the row that is at/above a cutoff (find rows that meet only 1 of several criteria).
}
\details{
For a data.frame with a few cols of related data, find which cells are the only one in the row that is at/above some cutoff.
This can find rows that meet only 1 of several criteria, for example.
Returns a logical matrix or data.frame, with TRUE for each cell that meets the test.
Can be used in EJ analysis in identifying places (rows) that were only flagged because one of the indicator(s) is at/above a cutoff, threshold value.
For example, if there were four criteria to be met in flagging a location, this function identifies
places that met only one of the criteria, and can show which one was met.
}
\note{
Future work: these functions could have wts, na.rm, & allow cutoffs or benchmarks as a vector (not just 1 number), & have benchnames.
}
\examples{
out <- flagged.only.by(x<-data.frame(a=1:10, b=rep(7,10), c=7:16), cutoff=7)
x; out # default is or.tied=FALSE
out <- flagged.only.by(data.frame(a=1:10, b=rep(7,10), c=7:16), cutoff=7,
or.tied=TRUE, below=TRUE)
out
out <- flagged.only.by(data.frame(a=1:10, b=rep(7,10), c=7:16) )
# Compares each number in each row to the default cutoff.
out
}
\seealso{
flagged.by or cols.above.which to see which cells are at/above/below some cutoff

cols.above.count to see, for each row, how many columns are at/above some cutoff

cols.above.percent to see, for each row, what fraction of columns are at/above some cutoff
}
\keyword{EJ}
