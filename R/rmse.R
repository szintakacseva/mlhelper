#' RMSE  - Calcuates the Root Mean Squared Error
#' 
#' @param actual actual values taken from the original df
#' @param predicted predicted values taken from the model
#' @return This function returns the calculated \code{rmse}
#'
#' @export
#' @examples
#' rmse(actual, predicted)
#' @author Eva Szin Takacs, \email{szin.takacs.eva@gmail.com}
rmse <-
function(actual, predicted) {
  
  return(sqrt( mean((actual - predicted)^2)))
}

