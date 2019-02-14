#' Histogram of a factor feature in a df
#'
#' Plots a basic histogram for a factor feature in a given df
#' 
#' @param df A data frame. Factor columns will be considered.
#' @param factor.v Factor feature
#' @return Histogram of the feature
#'
#' @export
#' @examples
#' plot.histogram(weather, "Weather")
#' @author Eva Szin Takacs, \email{szin.takacs.eva@gmail.com}
#'
plot.histogram <-
function(df, feature) {
  data <- data.frame(feature=df[[feature]])
  plot <- ggplot(data=data, aes(x=factor(feature))) + stat_count() +
    labs( title = "", x = feature, y = "")+
    theme(axis.text.x = element_text(angle = 90, hjust = 1, size = 5),
          axis.title.x = element_text(size = 8))
  return (plot)
}
