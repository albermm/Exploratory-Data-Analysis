library(lubridate)

## Read data into a table with appropriate classes
        
        download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",destfile = "raw-power-data.zip")
        unzip("raw-power-data.zip")
        power <- read.table("household_power_consumption.txt", header=TRUE,sep=";", na.strings="?")
        
## Convert dates and times
        power$Date <- dmy(power$Date)
        power$Time <- hms(power$Time)
        
##Reduce data frame to what is needed
        start <- ymd('2007-02-01')
        end <- ymd('2007-02-02')
        power <- subset(power, year(Date) == 2007 & month(Date) == 2 & (day(Date) == 1 | day(Date) == 2))
        
## Add column with combination of date and time
        power$date.time <- power$Date + power$Time
        
## Save file
        saveRDS(power, file='power-data.rds')
