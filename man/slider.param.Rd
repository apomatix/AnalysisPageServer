% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/params.R
\name{slider.param}
\alias{slider.param}
\title{slider.param}
\usage{
slider.param(..., min, max, step, value = min)
}
\arguments{
\item{...}{Passed through to \code{\link{simple.param}}. This includes at least "name", optionally "label" and "description" 
but not "type".}

\item{min}{Minimum value (number)}

\item{max}{Maximum value (number)}

\item{step}{Size of one step (must be <= max-max)}

\item{value}{Default value. If not specified then the minimum is taken to be the default}
}
\value{
An AnalysisPageParam
}
\description{
Build a slider AnalysisPageParam
}
\details{
Build a slider AnalysisPageParam. This is a numeric variable. It has a minimum value, a maximum value, and a step size
}
\examples{
  slider <- slider.param("children", label="No. Children", description="Number of Children", min = 0, max = 10, step = 0.5)
}
\author{
Brad Friedman
}
