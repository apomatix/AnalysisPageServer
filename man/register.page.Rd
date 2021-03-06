% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/registry.R
\name{register.page}
\alias{register.page}
\title{register.page}
\usage{
register.page(registry, page.name, page, overwrite = FALSE)
}
\arguments{
\item{registry}{AnalysisPageRegistry object}

\item{page.name}{Character. Name of the page to register}

\item{page}{AnalysisPage or function. If a function is supplied instead of an
AnalysisPage object then
it will be coerced into an AnalysisPage object calling \code{\link{new.analysis.page}}.}

\item{overwrite}{Logical. If FALSE (default) then throw and error if a page is
already registered under that name. If TRUE then just warn.}
}
\value{
void
}
\description{
Register a page
}
\details{
Register a page
}
\examples{
# Make a new registry
registry <- new.registry()

# Now register it under the name "sine" (in the "example" registry)
# and keep the modified registry.
registry <- register.page(registry, "sine", AnalysisPageServer:::sine.handler)
}
\seealso{
\code{\link{new.registry}}, \code{\link{has.page}}, \code{\link{get.page}}, \code{\link{pages}}, \code{\link{new.analysis.page}}
}
\author{
Brad Friedman
}
