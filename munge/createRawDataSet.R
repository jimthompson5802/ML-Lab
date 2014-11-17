###
# create raw.df from source data
###

# problem specific code to extract out source data

source("CommonFunctions.R")


data(iris)

raw.df <- iris

save(raw.df,file=paste0(data.dir,"/raw_df.RData"))


# cleab-up

rm(iris)
