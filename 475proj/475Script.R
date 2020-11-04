library("tidyverse")
library(dplyr)

#read in precinct data
precinct_house <- read.csv("2016-precinct-house.csv", header=TRUE) 

precinct_house.texas <- filter(precinct_house, precinct_house$state_postal == "TX")
precinct_house.texas.dropped <- subset(precinct_house.texas,
                                       select = -c(state_postal,year,stage,
                                                   special,
                                                   state,
                                                   state_fips,state_icpsr,county_lat,county_long))

write.csv(precinct_house.texas.dropped,"PrecinctVoterData.csv")