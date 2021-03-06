% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.density.R
\name{plot.density}
\alias{plot.density}
\title{Density plot of a numeric feature in a df}
\usage{
\method{plot}{density}(df, feature)
}
\arguments{
\item{df}{A data frame. Numeric columns will be considered}

\item{numeric.v}{Numeric feature as a string}
}
\value{
Density plot of the numeric feature
}
\description{
Plots a density function of a numeric feature in a given df
}
\examples{
plot.density(weather, "Temp")
}
\author{
Eva Szin Takacs, \email{szin.takacs.eva@gmail.com}
}
