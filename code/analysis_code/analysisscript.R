###############################
# analysis script
#
#this script loads the processed, cleaned data, does a simple analysis
#and saves the results to the results folder

#load needed packages. make sure they are installed.
library(ggplot2)
library(dplyr)
library(broom)
library(here)

#path to data
#note the use of the here() package and not absolute paths
data_location <- here("data","processed_data","processeddata.rds")

#load data. 
mydata <- readRDS(data_location)

#make a scatterplot of data
#we also add a linear regression line to it
p1 <- mydata %>% ggplot(aes(x=Height, y=Weight)) + geom_point() + geom_smooth(method='lm')

#look at figure
plot(p1)

#save figure
figure_file = here("results","resultfigure.png")
ggsave(filename = figure_file, plot=p1) 

# fit linear model
lmfit <- lm(Weight ~ Height, mydata)  

# place results from fit into a data frame with the tidy function
lmtable <- broom::tidy(lmfit)

#look at fit results
print(lmtable)

# save table  
table_file = here("results", "resulttable.rds")
saveRDS(lmtable, file = table_file)

  