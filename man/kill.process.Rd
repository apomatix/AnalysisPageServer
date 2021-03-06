% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rook.analysis.page.server.R
\name{kill.process}
\alias{kill.process}
\title{kill.process}
\usage{
kill.process(pid)
}
\arguments{
\item{pid}{Process ID, or list with \code{$pid} component}
}
\value{
Same as \code{wait} in the \code{fork} package.
}
\description{
Kill a process and wait for it.
}
\details{
Kill a process and wait for it. Nothing more than \code{kill(pid); wait(pid)},
but handy to have a single function so you don't forget the \code{wait()} call.
}
\author{
Brad Friedman
}
