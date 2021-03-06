% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocess.NAs.R
\name{preprocess.NAs}
\alias{preprocess.NAs}
\title{Handling missing values in a df}
\usage{
preprocess.NAs(df, numeric.v, factor.v = "None")
}
\arguments{
\item{df}{A data frame. numeric and factor columns will be considered}

\item{numeric.v}{Numeric value, NAs will be replaced with. Default is 0.}

\item{factor.v}{Factor value, NAs will be replaced with. Default is None.}
}
\value{
This function returns the initial \code{data.frame} with NAs replaced
}
\description{
Replaces numeric and factor columns NAs with user defined values
}
\examples{
preprocess.NAs(weather, 0, "None")
}
\author{
Eva Szin Takacs, \email{szin.takacs.eva@gmail.com}
}
