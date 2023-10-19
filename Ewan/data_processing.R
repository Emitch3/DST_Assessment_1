library(dplyr)

flightData <- read.csv("C:/Users/USER/OneDrive/Bristol Year 4/Data Science Toolbox/Group Assessments/full_data_flightdelay.csv")

unique(flightData$DEPARTING_AIRPORT)

jfk_flight_data <- flightData[flightData$DEPARTING_AIRPORT == "John F. Kennedy International",]

cols.dont.want <- c("DEPARTING_AIRPORT","AIRPORT_FLIGHTS_MONTH","LATITUDE", "LONGITUDE", "AVG_MONTHLY_PASS_AIRPORT")

jfk_flight_data <- jfk_flight_data[, ! names(jfk_flight_data) %in% cols.dont.want, drop = F]

View(jfk_flight_data)

write.csv(jfk_flight_data, file = "jfk_flight_data.csv", sep = "\t", row.names=FALSE)
