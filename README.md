# mlhelper
**R package for EDA and ml preprocessing**

## Installation steps

**Install from github:**
`install_github("szintakacseva/mlhelper")`

**Load library:**
`library(mlhelper)`

Optionally load from local repository:      
`library(mlhelper, lib.loc = "c:/Yor_local_dir")`
for example,
`library(mlhelper, lib.loc = "e:/RProjects/packages")`

### Helper functions:
* `df.numeric.summary` - Generate specific summaries of numeric columns in a data frame
* `do.plots` - List of plots in a grid arrangement
* `numeric.summary` - Summarises numeric data and returns a data frame containing the basic summary values
* `plot.density` - Density plot of a numeric feature in a df
* `plot.histogram` - Histogram of a factor feature in a df
* `preprocess.NAs` - Handling missing values in a df
* `rmse` - Calcuates the Root Mean Squared Error

### Data sets:
* `weather`

