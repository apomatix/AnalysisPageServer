% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/search.replace.R
\name{search.replace}
\alias{search.replace}
\title{search.replace}
\usage{
search.replace(infile, outfile, replacements, overwrite = FALSE)
}
\arguments{
\item{infile}{Path to input file}

\item{outfile}{Path to output file (must be different)}

\item{replacements}{Named charvec of length 1 (single replacement) or 2 (double replacement)}

\item{overwrite}{Boolean. If FALSE then outfile must not yet exist. If TRUE and it
already exists then it will be overwritten.}
}
\value{
Nothing, but might throw an error.
}
\description{
Search and replace strings in a file
}
\details{
This is a very limited interface and only meant for internal use.

It will replace all occurances of a string with another string. It may
do 1 or 2 replacements.

The result is written to a second file.

This is done in C++ so very fast (I hope).
}
\author{
Brad Friedman
}
