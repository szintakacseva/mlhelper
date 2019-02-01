#' Numeric Summaries
#'
#' Summarises numeric data and returns a data frame containing the basic summary values.
#'
#' @param x a numeric vector containing the values to summarize.
#' @param na.rm A logical indicating whether missing values should be removed.
#' @import dplyr
#' @import moments
#' @return This function returns a \code{data.frame} including columns:
#' \itemize{
#'  \item min
#'  \item q1
#'  \item mean
#'  \item median
#'  \item q3
#'  \item iqr
#'  \item stdev
#'  \item max
#'  \item skewness
#'  \item skew
#' }
#' @export
#' @examples
#' numeric.summary(iris$Sepal.Length)
#' numeric.summary(airquality$Wind, na.rm = FALSE)
#' @author Eva Szin Takacs, \email{szin.takacs.eva@gmail.com}
#' @seealso \code{\link[base]{summary}}
numeric.summary <-
function(x, na.rm) {
  
  # Include an error if x is not numeric
  if(!is.numeric(x)){
    stop("Data must be numeric")
  }
  
  # Create data frame
  data.frame( MIN = min(x, na.rm = na.rm),
              Q1 = quantile(x, 0.25, na.rm = na.rm),
              MEAN = round(mean(x, na.rm = na.rm),2),
              MEDIAN = round(median(x, na.rm = na.rm),2),
              Q3 = quantile(x, 0.75, na.rm = na.rm), 
              IQR = IQR(x, na.rm = na.rm),
              STDEV = round(sd(x, na.rm = na.rm),2),
              MAX = max(x, na.rm = na.rm),
              SKEWNESS = round(skewness(x, na.rm = na.rm),2))%>%
    mutate(SKEW = ifelse(MEAN > MEDIAN, "RIGHT", "LEFT"))
}
