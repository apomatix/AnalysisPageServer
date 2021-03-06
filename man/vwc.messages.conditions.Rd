% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/error.R
\name{vwc.messages.conditions}
\alias{vwc.messages.conditions}
\title{vwc.messages.conditions}
\usage{
vwc.messages.conditions(vwc)
}
\arguments{
\item{vwc}{AnalysisPageValueWithCondition}
}
\value{
List of condition objects for messages (might be of length 0)
}
\description{
Get condition object for messages
}
\details{
Get condition object for messages
}
\examples{
vwc <- tryKeepConditions({message("I've got something to say.")})
vwc.messages.conditions(vwc)
}
\author{
Brad Friedman
}
