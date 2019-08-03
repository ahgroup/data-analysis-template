###############################
# processing script
#
#this script loads the raw data, processes and cleans it 
#and saves it as Rds file in the processed_data folder

#load needed packages. make sure they are installed.
library(readxl)
library(dplyr)

#load data. path is relative to project directory.
rawdata <- readxl::read_excel("./data/raw_data/exampledata.xlsx")

#take a look at the data
dplyr::glimpse(rawdata)

# looks like we have measurements for height (in centimeters) and weight (in kilogram)

# there are some problems with the data: 
# There is an entry which says "sixty" instead of a number. 
# Does that mean it should be a numeric 60? It somehow doesn't make
# sense since the weight is 60kg, which can't happen for a 60cm person (a baby)
# Since we don't know how to fix this, we need to remove the person.
# This "sixty" entry also turned all Height entries into characters instead of numeric.
# We need to fix that too.
# Then there is one person with a height of 6. 
# that could be a typo, or someone mistakenly entered their height in feet.
# Since we unfortunately don't know, we'll have to remove this person.
# similarly, there is a person with weight of 7000, which is impossible,
# and one person with missing weight.
# to be able to analyze the data, we'll remove those 5 individuals

# this is one way of doing it. Note that if the data gets updated, 
# we need to decide if the thresholds are ok (newborns could be <50)

processeddata <- rawdata %>% dplyr::filter( Height != "sixty" ) %>% 
  mutate_all(type.convert) %>% 
  dplyr::filter(Height > 50 & Weight < 1000)

#save data as RDS
saveRDS(cleandata, file = "./data/processed_data/processeddata.rds")
