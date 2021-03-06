% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/registry-S3generics.R, R/registry.R
\name{get.page}
\alias{get.page}
\alias{get.page.AnalysisPageRegistry}
\title{get.page}
\usage{
get.page(registry, page.name)

\method{get.page}{AnalysisPageRegistry}(registry, page.name)
}
\arguments{
\item{registry}{AnalysisPageRegistry object}

\item{page.name}{Name of the registered function}
}
\value{
The registered function. Stops if no such function is registerd
}
\description{
Return a registered function
}
\details{
Return a registered function
}
\examples{
example(register.page, ask=FALSE)  # register the sine page
get.page(registry, "sine")         # should return the sine.handler function
}
\seealso{
\code{\link{new.registry}}, \code{\link{register.page}}, \code{\link{has.page}}, \code{\link{pages}}
}
\author{
Brad Friedman
}
