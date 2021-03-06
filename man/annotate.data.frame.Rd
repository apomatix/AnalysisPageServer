% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/analysis.page.R
\name{annotate.data.frame}
\alias{annotate.data.frame}
\title{annotate.data.frame}
\usage{
annotate.data.frame(obj, required.fields = c("x", "y"), signif.digits = 3)
}
\arguments{
\item{obj}{data.frame or AnnotatedDataFrame: the return value of a handler.}

\item{required.fields}{Character vector of required fields. Default: \code{c("x","y")}. You could set to \code{character(0)}, for
example, if you don't want to force a check that "x" and "y" be present.}

\item{signif.digits}{Integer, default 3, giving the number of significant digits
to which "numeric" (but not "integer") columns should be rounded, using
\code{signif()}. NULL means to not round at all.}
}
\value{
AnnotatedDataFrame
}
\description{
Clean up and annotate a data frame
}
\details{
The obj argument should be a return value from a handler, either a data.frame or an
annotated data.frame. If a data.frame then an AnnotatedDataFrame is built. Then
three special fields in \code{varMetadata} are checked: "labelDescription" and "type"

If any is missing then they are built as follows:
\describe{
  \item{labelDescription}{labelDescription always exists, but sometimes it has NA entries.
In those cases it is set to the name of the variable (rowname of the \code{varMetadata}).
This is the one that you most likely might want to set yourself.}
  \item{type}{If not present, then it is calculated from the pData like this:
     \code{sapply(lapply(pData(obj), is), "[", 1)}. This will become one of "integer", "factor",
     "logical", "numeric" or "character", and the front end should know how to render these.}
}

Columns that have type "numeric" (but not "integer") are rounded to
the given number of significant digits.

Also, this throws an error if "x" or "y" field is missing
}
\author{
Brad Friedman
}
