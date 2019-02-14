#' Density plot of a numeric feature in a df
#'
#' Plots a density function of a numeric feature in a given df
#' 
#' @param df A data frame. Numeric columns will be considered
#' @param numeric.v Numeric feature as a string
#' @return Density plot of the numeric feature
#'
#' @export
#' @examples
#' plot.density(weather, "Temp")
#' @author Eva Szin Takacs, \email{szin.takacs.eva@gmail.com}
#' 
plot.density <-
function(df, feature){
  data <- data.frame(feature=df[[feature]])
  p <- ggplot(data= data) + geom_line(aes(x = feature), stat = 'density', size = 1,alpha = 1.0) +
   # scale_y_continuous(labels = scales::comma)+
  labs( title = "", x = paste0((colnames(df)[feature]), '\n', 'Skewness:',round(skewness(df[[feature]], na.rm = TRUE), 2)), y = "")+
    theme(axis.text.x = element_text(angle = 45, hjust = 1, size = 5),
          axis.title.x = element_text(size = 8))
  
  return(p)
   
}
