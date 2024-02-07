## ---- packages --------
#load needed packages. make sure they are installed.
library(here) #for data loading/saving
library(dplyr)
library(skimr)
library(ggplot2)

## ---- loaddata --------
#Path to data. Note the use of the here() package and not absolute paths
data_location <- here::here("data","processed-data","processeddata.rds")
#load data
mydata <- readRDS(data_location)

## ---- table1 --------
summary_df = skimr::skim(mydata)
print(summary_df)
# save to file
summarytable_file = here("results","tables", "summarytable.rds")
saveRDS(summary_df, file = summarytable_file)

## ---- height --------
p1 <- mydata %>% ggplot(aes(x=Height)) + geom_histogram() 
plot(p1)
figure_file = here("results", "figures", "height-distribution.png")
ggsave(filename = figure_file, plot=p1) 

## ---- weight --------
p2 <- mydata %>% ggplot(aes(x=Weight)) + geom_histogram() 
plot(p2)
figure_file = here("results", "figures", "weight-distribution.png")
ggsave(filename = figure_file, plot=p2) 

## ---- fitfig1 --------
p3 <- mydata %>% ggplot(aes(x=Height, y=Weight)) + geom_point() + geom_smooth(method='lm')
plot(p3)
figure_file = here("results","figures", "height-weight.png")

## ---- fitfig2 --------
p4 <- mydata %>% ggplot(aes(x=Height, y=Weight, color = Gender)) + geom_point() + geom_smooth(method='lm')
plot(p4)
figure_file = here("results","figures", "height-weight-stratified.png")
ggsave(filename = figure_file, plot=p4) 


