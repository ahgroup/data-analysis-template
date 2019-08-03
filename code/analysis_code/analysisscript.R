###############################
# analysis script
#
#this script loads the processed, cleaned data, does a simple analysis
#and saves the results to the results folder

#load needed packages. make sure they are installed.
library(ggplot2)
library(dplyr)
library(broom)

#load data. path is relative to project directory.
mydata <- readRDS("./data/processed_data/processeddata.rds")

#take a look at the data
p1 <- mydata %>% ggplot(aes(x=Height, y=Weight)) + geom_point() + geom_smooth(method='lm')

#save figure
ggsave(filename="./results/resultfigure.png",plot=p1) 

  
# fit linear model
lmfit <- lm(Weight ~ Height, mydata)  

# place results from fit into a data frame with the tidy function
lmtable <- broom::tidy(lmfit)

# save table  
saveRDS(lmtable, file = "./results/resulttable.rds")

  