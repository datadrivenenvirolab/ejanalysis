% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/get.fips.tract.R
\name{get.fips.tract}
\alias{get.fips.tract}
\title{Get Census tract FIPS from block or block group FIPS}
\usage{
get.fips.tract(fips)
}
\arguments{
\item{fips}{Vector of one or more elements, character class, 12 or 15 characters long (block group or block), required.}
}
\value{
Returns a vector of one or more character elements, same lengths as fips
}
\description{
Extract partial FIPS code from longer FIPS code
}
\details{
For information on FIPS codes, see \url{http://www.census.gov/geo/reference/ansi.html},
  and also see \url{https://www.census.gov/geo/reference/geoidentifiers.html}
}
\examples{
samplefips <- c("011030001003", "011030001003001", 11030001003001, 35, 1, NA, 'invalidtext', '02')
get.fips.tract(samplefips)
}
\seealso{
\code{\link{clean.fips.1215}}, \code{\link{get.fips.bg}}, \code{\link{get.fips.tract}}, \code{\link{get.fips.county}}, \code{\link{get.fips.st}} to get partial FIPS from longer FIPS, or
  \code{\link{get.name.county}}, \code{\link{get.name.state}} to extract name from longer Census name, or
  \code{\link{get.state.info}}, \code{\link{get.county.info}}, \code{\link{get.epa.region}}
  to look up info such as FIPS, state abbreviation, statename, countyname, or region based on FIPS or name.
}
