% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/merData.R
\name{superFactor}
\alias{superFactor}
\title{Create a factor with unobserved levels}
\usage{
superFactor(x, fullLev)
}
\arguments{
\item{x}{a vector to be converted to a factor}

\item{fullLev}{a vector of factor levels to be assigned to x}
}
\value{
a factor variable with all observed levels of x and all levels
of x in fullLev
}
\description{
Create a factor variable and include unobserved levels
for compatibility with model prediction functions
}
\examples{
regularFactor <- c("A", "B", "C")
regularFactor <- factor(regularFactor)
levels(regularFactor)
# Now make it super
newLevs <- c("D", "E", "F")
regularFactor <- superFactor(regularFactor, fullLev = newLevs)
levels(regularFactor) # now super
}
