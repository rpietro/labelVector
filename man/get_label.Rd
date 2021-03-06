% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_label.R
\name{get_label}
\alias{get_label}
\alias{get_label.default}
\alias{get_label.data.frame}
\title{Extract Label Attribute From a Labelled Vector}
\usage{
get_label(x, ...)

\method{get_label}{default}(x, ...)

\method{get_label}{data.frame}(x, vars = NULL, ...)
}
\arguments{
\item{x}{An atomic vector.}

\item{...}{Arguments to pass to other methods.}

\item{vars}{A character vector of variable names in \code{x} for which
to retrieve labels.  If \code{NULL}, all labels are returned.}
}
\description{
Retrieve the label attribute of a labelled vector. If the
  vector has no label, the vector name is returned as a string.
}
\seealso{
\code{\link{set_label}}
x <- 1:10
x <- set_label(x, "Integers")

get_label(x)

y <- letters
attr(y, "label")    # NULL
get_label(y)        # "y"

# Set labels for variables in a data frame

mtcars2 <-
  set_label(mtcars,
            am = "Automatic / Manual",
            mpg = "Miles per Gallon",
            gear = "Number of gears")

get_label(mtcars2)
}
