#' Handling missing values in a df
#'
#' Replaces numeric and factor columns NAs with user defined values
#' 
#' @param df A data frame. numeric and factor columns will be considered
#' @param numeric.v Numeric value, NAs will be replaced with. Default is 0.
#' @param factor.v Factor value, NAs will be replaced with. Default is None.
#' @return This function returns the initial \code{data.frame} with NAs replaced
#'
#' @export
#' @examples
#' preprocess.NAs(weather, 0, "None")
#' @author Eva Szin Takacs, \email{szin.takacs.eva@gmail.com}

preprocess.NAs <-
function(df, numeric.v, factor.v = "None"){
  
# get factor and numeric features
numeric_var <- names(df)[which(sapply(df, is.numeric))]

# get factor features
factor_var <- names(df)[which(sapply(df, is.factor))]

# df with numeric features
df_num <-  df %>%
  select(numeric_var)

#for numeric features replace missing values with 0
for (feature in colnames(df_num)) {
    df[[feature]][is.na(df_num[feature])] <- numeric.v
}

 # df with factor features
df_fac <-  df %>%
  select(factor_var)

#add the new level "None" and replace missing values with "None" for factors in a df
for (feature in colnames(df_fac)) {
    levels(df[[feature]]) = c(levels(df_fac[[feature]]), factor.v)
    df[[feature]][is.na(df_fac[[feature]])] <- factor.v
}
return(df)
}
