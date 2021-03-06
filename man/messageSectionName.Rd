% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/analysis.page.R
\name{messageSectionName}
\alias{messageSectionName}
\title{Get/set section name for "messages" section}
\usage{
messageSectionName(sectionName)
}
\arguments{
\item{sectionName}{If present, new section name (e.g.
"Your Messages").}
}
\value{
A string, the section name for the messages section
}
\description{
Any \code{message}s thrown during execution of a page handler
are display in a new section of the accordion. This controls
the name. This is reset to "Messages" for each page, but
the page can call this function to get or set the name.
}
\details{
Note that all messages thrown will be collected at the end
and made into this single section.
Therefore, if the message section is renamed after throwing a message then
both the old and any newer messages will appear under the new name.

If a section of the same name is created using \code{\link{appendCustomContent}}
then these messages will just be appended to the end.
}
\author{
Brad Friedman
}
