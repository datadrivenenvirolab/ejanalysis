#' @title Relative Risks (RR) in zones as ratios to US values
#' @description Takes zone-specific RRS values and divides each value by the corresponding value for the USA overall.
#' @param RRS A three dimensional array that is created by \code{\link{RR}} and has format like RRS[d, e, zone] but where zone must include the name USA
#' @param d Vector of names of demographic groups that must be subset of first dimension of RRS
#' @param e Vector of names of environmental risk indicators that must be subset of second dimension of RRS
#' @param zone Vector of zone names that must be subset of names of third dimension of RRS
#' @return numeric results same shape as RRS[d, e, zone]
#' @template seealsoRR
#' @export
RR.table.vs.us <- function(RRS, d, e, zone) {
  round(RRS[d, e, zone] / RRS[d, e, 'USA'], 2)
}
