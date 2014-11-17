###
#  create training, testing and validation data sets
###

library(caret)

source("CommonFunctions.R")

#
# modify following code as needed to adapt to specific attributes in raw.df

# load the raw data
load(paste0(data.dir,"/raw_df.RData"))

# extract random sample for training
set.seed(13)
idx <- createDataPartition(raw.df$Species, p=0.6,list=FALSE)
trng.df <- raw.df[idx,]
test.df <- raw.df[-idx,]

# split test into test and validation data sets
set.seed(17)
idx <- createDataPartition(test.df$Species, p=0.5, list=FALSE)
vldn.df <- test.df[idx,]
test.df <- test.df[-idx,]

# create character vectors for attribute names
id.vars <- NULL
cat.vars <- NULL
num.vars <- names(trng.df)[1:4]
trgt.var <- names(trng.df)[5]

# save data
save(trng.df,test.df,vldn.df,id.vars,cat.vars,num.vars,trgt.var,
     file=paste0(data.dir,"/trng_test_vldn.RData"))

# free up some space
rm(raw.df)

# look at mix of data
table(raw.df$Species)/nrow(raw.df)
table(trng.df$Species)/nrow(trng.df)
table(test.df$Species)/nrow(test.df)
table(vldn.df$Species)/nrow(vldn.df)

summary(raw.df)
summary(trng.df)
summary(test.df)
summary(vldn.df)
