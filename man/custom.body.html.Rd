% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/custom.html.R
\name{custom.body.html}
\alias{custom.body.html}
\title{custom.body.html}
\usage{
custom.body.html(extra.attr = NULL)
}
\arguments{
\item{extra.attr}{Other attributes, provided in a named charvec.}
}
\value{
One line of HTML with a <body> element opening tag.
}
\description{
Generate a <body> HTML line including attributes for APS
}
\details{
Generate a <body> HTML line including attributes for APS.
Your <body> element must have the special attribute returned by
the \code{\link{custom.body.attr}()}. This function
makes a line of HTML code containing that, and any other
attributes you want to include. It just opens the
<body> element, but does not close it.
}
\author{
Brad Friedman
}
