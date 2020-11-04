library(rgdal)
library(rgeos)
library(sf,quietly=TRUE)
precinct<-readOGR("./general","2016General")
district<-readOGR("./districts","School_Districts_1920")

precinct <- gBuffer(precinct, byid=TRUE, width=0)
district <- gBuffer(district, byid=TRUE, width=0)

Results <- st_intersection(st_as_sf(precinct),st_as_sf(district))
intesecting_precincts  <- subset(Results,
                                 select = -c(COLOR,Shape_area,Shape_len,Shape_area.1,Shape_len.1,COLOR.1,DISTRICT,DISTRICT_C))

intesecting_precincts  <- st_set_geometry(intesecting_precincts, NULL)

write.csv(intesecting_precincts,"PrecinctToDistrict.csv")