#' Summary of Numeric Columns
#'
#' Generate specific summaries of numeric columns in a data frame
#' 
#' @param x A data frame. Non-numeric columns will be removed
#' @param na.rm A logical indicating whether missing values should be removed
#' @import purrr
#' @import dplyr
#' @return This function returns a \code{data.frame} including columns:
#'  \itemize{
#'  \item id
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
#' df.numeric.summary(iris)
#' df.numeric.summary(airquality, na.rm = FALSE)
#' @author Eva Szin Takacs, \email{szin.takacs.eva@gmail.com}
#' @seealso \link[base]{summary}
df.numeric.summary <-
function(x, na.rm = TRUE){
  
  df.numeric <- select_if(x, .predicate = is.numeric) 
  
  map_df(df.numeric, .f = numeric.summary, na.rm = TRUE, .id = "ID")
  
}
