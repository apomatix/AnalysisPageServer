% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/test.R
\name{check.same.svgs}
\alias{check.same.svgs}
\title{check.same.svgs}
\usage{
check.same.svgs(got.lines, exp.lines, ...)
}
\arguments{
\item{got.lines}{Charvec of the lines of the SVG to test}

\item{exp.lines}{Charvec of the lines of the reference SVG}

\item{...}{Passed through to \code{checkEquals} (such as test name).}
}
\value{
As \code{\link[RUnit]{checkEquals}}
}
\description{
Test that 2 SVG files have the same content
}
\details{
Test that 2 SVG files have the same content. Most differences in whitespace are ignored,
as are all "id", "class" and "type" tags.
}
\author{
Brad Friedman
}
