###############################
# processing script
#
#this script loads the raw data, processes and cleans it 
#and saves it as Rds file in the processed_data folder

#load needed packages. make sure they are installed.
library(readxl) #for loading Excel files
library(dplyr) #for data processing
library(here) #to set paths

#path to data
#note the use of the here() package and not absolute paths
data_location <- here::here("data","raw_data","exampledata.xlsx")

#load data. 
#note that for functions that come from specific packages (instead of base R)
# I often specify both package and function like so
#package::function() that's not required one could just call the function
#specifying the package makes it clearer where the function "lives",
#but it adds typing. You can do it either way.
rawdata <- readxl::read_excel(data_location)

#take a look at the data
dplyr::glimpse(rawdata)

#dataset is so small, we can print it to the screen.
#that is often not possible.
print(rawdata)

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
                             dplyr::mutate(Height = as.numeric(Height)) %>% 
                             dplyr::filter(Height > 50 & Weight < 1000)

# save data as RDS
# I suggest you save your processed and cleaned data as RDS or RDA/Rdata files. 
# This preserves coding like factors, characters, numeric, etc. 
# If you save as CSV, that information would get lost.
# See here for some suggestions on how to store your processed data:
# http://www.sthda.com/english/wiki/saving-data-into-r-data-format-rds-and-rdata

# location to save file
save_data_location <- here::here("data","processed_data","processeddata.rds")

saveRDS(processeddata, file = save_data_location)


