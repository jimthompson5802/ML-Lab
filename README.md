Overview
========

Naming Conventions
------------------

### Global Data Sets
* **raw.df** - data frame containing the original raw data
* **trng.df** - **training** data set
* **test.df** - **test** data set used for testing of models and tuning hyper-parmeters
* **vldn.df** - **validation** is the hold out data set for final model validation


### Global Variables
* **root.dir** - Directory path for the ML-Lab directory
* **data.dir** - Location for the data **directory**
* **id.vars** - contains names of variable(s) that identify the records
* **num.vars** - contains names of numeric explanatory variables
* **cat.vars** - contains names of categorical explanatory variables
* **trgt.var** - contains name of target variable
* **sel.num.vars.\<mdl\>** - contains names of selected numeric explanatory variables 
used for model \<mdl\>
* **sel.cat.vars.\<mdl\>** - contains names of selected categorical explanatory variables 
used for model \<mdl\>
