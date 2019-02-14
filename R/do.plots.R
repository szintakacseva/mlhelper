#' List of plots in a grid arrangement
#'
#' Grid of plots depending on the function (\code{plot.histogram} or \code{plot.density}) for a given df
#' 
#' @param df A data frame.
#' @param funct function name. Tested for(\code{plot.histogram} or \code{plot.density}).
#' @param nr A range number of plots.
#' @param ncols Number of columns of the grid arrangement.

#' @return List of plots in a grid arrangement
#'
#' @export
#' @examples
#' do.plots(iris, func=plot.density, nr=1:4, ncols=3)
#' @author Eva Szin Takacs, \email{szin.takacs.eva@gmail.com}
#' 
do.plots <-
function(df, funct, nr, ncols=3) {
  p.list <- list()
  for (i in nr) {
    p <- funct(df=df, feature=i)
    p.list <- c(p.list, list(p))
  }
  do.call("grid.arrange", c(p.list, ncol=ncols))
}
