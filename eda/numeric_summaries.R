###
# numeric summaries
###

source("CommonFunctions.R")

library(ggplot2)


# load train data
load(paste0(data.dir,"/trng_test_vldn.RData"))

#
# modify remaining code as required for problem
#

# summarize predictor variables
summary(trng.df[,c(num.vars,cat.vars)])

# correlation of numeric variables with target variable


